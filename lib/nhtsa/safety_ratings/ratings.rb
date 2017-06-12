module Nhtsa
  module SafetyRatings
    class Ratings
      def initialize(*vehicle_ids)
        raise ArgumentError, "At Least 1 vehicle id is required" if vehicle_ids.empty?
        @vehicle_ids = Array(vehicle_ids).flatten
        @ratings = @vehicle_ids.collect{|vehicle_id| Rating.new(JSON.parse(open(url(vehicle_id)).read)["Results"].first)}
      end

      def url(vehicle_id)
        "#{BASE_URI}#{END_POINT}/VehicleId/#{vehicle_id}#{DEFAULT_PARAMS}"
      end

      def ratings
        @ratings
      end

      def values
        @ratings.map(&:values)
      end

      def to_s
        @ratings.map(&:to_s).join("\n#{'='*50}\n\n")
      end
    end
  end
end
