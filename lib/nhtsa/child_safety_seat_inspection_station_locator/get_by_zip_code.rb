module Nhtsa
  module ChildSafetySeatInspectionStationLocator
    class GetByZipCode
      def initialize(zip_code, filters = {:spanish => false, :cpsweek => false})
        @zip_code = zip_code
        @filters = filters
      end

      def url
        if @filters[:spanish] && @filters[:cpsweek]
          "#{BASE_URI}#{END_POINT}/zip/#{@zip_code}#{CPS_WEEK}#{SPANISH}#{DEFAULT_PARAMS}"
        elsif @filters[:spanish]
          "#{BASE_URI}#{END_POINT}/zip/#{@zip_code}#{SPANISH}#{DEFAULT_PARAMS}"
        elsif @filters[:cpsweek]
          "#{BASE_URI}#{END_POINT}/zip/#{@zip_code}#{CPS_WEEK}#{DEFAULT_PARAMS}"
        else
          "#{BASE_URI}#{END_POINT}/zip/#{@zip_code}#{DEFAULT_PARAMS}"
        end
      end

      def inspection_stations
        JSON.parse(open(url).read)["Results"]
      end
    end
  end
end
