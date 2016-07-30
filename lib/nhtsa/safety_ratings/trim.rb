module Nhtsa
  module SafetyRatings
    class Trim
      def initialize(trim_information)
        @trim_information = trim_information
      end

      def name
        @trim_information["VehicleDescription"]
      end

      def trim_information
        @trim_information
      end

      def trim_id
        @trim_information["VehicleId"]
      end

      def trim_description
        @trim_information["VehicleDescription"]
      end

      def to_s
        "id: #{trim_id}\n\t#{trim_description}"
      end
    end
  end
end
