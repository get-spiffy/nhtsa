module Nhtsa
  module ChildSafetySeatInspectionStationLocator
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
