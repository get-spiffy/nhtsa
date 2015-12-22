# NHTSA Child Safety Seat Inspection Station Locator
# http://webapi.nhtsa.gov/Default.aspx?CSSIStations/API/80

module Nhtsa
  module ChildSafetySeatInspectionStationLocator

    END_POINT = "/CSSIStation"
    CPS_WEEK = "/cpsweek"
    SPANISH = "/lang/spanish"

    class GetByZipCode
      def initialize(zip_code, filters = {:spanish => false, :cpsweek => false})
        @zip_code = zip_code
        @filters = filters
      end

      def url
        if @filters[:spanish] && @filters[:cpsweek]
          BASE_URI + END_POINT + "/zip/#{@zip_code}" + CPS_WEEK + SPANISH + DEFAULT_PARAMS
        elsif @filters[:spanish]
          BASE_URI + END_POINT + "/zip/#{@zip_code}" + SPANISH + DEFAULT_PARAMS
        elsif @filters[:cpsweek]
          BASE_URI + END_POINT + "/zip/#{@zip_code}" + CPS_WEEK + DEFAULT_PARAMS
        else
          BASE_URI + END_POINT + "/zip/#{@zip_code}" + DEFAULT_PARAMS
        end
      end

      def inspection_stations
        JSON.parse(open(url).read)["Results"]
      end
    end

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

    class GetByGeoLocation
      def initialize(latitude, longitude, radius)
        @latitude = latitude
        @longitude = longitude
        @radius = radius
      end

      def url
        "http://webapi.nhtsa.gov/api/CSSIStation?lat=#{@latitude}&long=#{@longitude}&miles=#{@radius}&format=json"
      end

      def inspection_stations
        JSON.parse(open(url).read)["Results"]
      end
    end

  end
end
