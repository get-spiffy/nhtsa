# NHTSA Child Safety Seat Inspection Station Locator
# http://webapi.nhtsa.gov/Default.aspx?CSSIStations/API/80

module Nhtsa
  module ChildSafetySeatInspectionStationLocator
    require 'json'
    require 'open-uri'

    class GetByZipCode
      def initialize(zip_code)
        @zip_code = zip_code
      end

      def url
        "http://webapi.nhtsa.gov/api/CSSIStation/zip/#{@zip_code}?format=json"
      end

      def inspection_stations
        JSON.parse(open(url).read)["Results"]
      end
    end

    class GetByState
      def initialize(state_abbreviation)
        @state_abbreviation = state_abbreviation
      end

      def url
        "http://webapi.nhtsa.gov/api/CSSIStation/state/#{@state_abbreviation}?format=json"
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
