module Nhtsa
  module SafetyRatings
    class Ratings
      def initialize(vehicle_id)
        @vehicle_id = vehicle_id
      end

      def url
        BASE_URI + END_POINT + "/VehicleId/#{@vehicle_id}" + DEFAULT_PARAMS
      end

      def ratings
        JSON.parse(open(url).read)["Results"].first
      end
    end
  end
end
