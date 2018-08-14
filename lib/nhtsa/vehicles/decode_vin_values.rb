module Nhtsa
  module Vehicles
    class DecodeVinValues
      def initialize(vin, year=nil)
        @vin = vin
        @year = year
      end

      def url
        model_year = @year.to_s.empty? ? "" : "&modelyear=#{@year}"
        "#{BASE_URI}#{END_POINT}/DecodeVinValues/#{@vin}#{DEFAULT_PARAMS}#{model_year}"
      end

      def vehicles
        JSON.parse(open(url).read)["Results"]
      end
    end
  end
end
