module Nhtsa
  module ChildSafetySeatInspectionStationLocator
    class GetByState
      def initialize(state_abbreviation, filters = {spanish: false, cpsweek: false})
        @state_abbreviation = state_abbreviation
        @filters = filters
      end

      def url
        if @filters[:spanish] && @filters[:cpsweek]
          BASE_URI + END_POINT + "/state/#{@state_abbreviation}" + CPS_WEEK + SPANISH + DEFAULT_PARAMS
        elsif @filters[:spanish]
          BASE_URI + END_POINT + "/state/#{@state_abbreviation}" + SPANISH + DEFAULT_PARAMS
        elsif @filters[:cpsweek]
          BASE_URI + END_POINT + "/state/#{@state_abbreviation}" + CPS_WEEK + DEFAULT_PARAMS
        else
          BASE_URI + END_POINT + "/state/#{@state_abbreviation}" + DEFAULT_PARAMS
        end
      end

      def inspection_stations
        JSON.parse(open(url).read)["Results"]
      end
    end
  end
end
