module Nhtsa
  module SafetyRatings
    class Rating
      def initialize(ratings_hash)
        @ratings_hash = ratings_hash.nil? ? {} : ratings_hash
      end

      def name
        @ratings_hash["VehicleDescription"]
      end

      def vehicle_picture
        @ratings_hash["VehiclePicture"]
      end

      def overall_rating
        @ratings_hash["OverallRating"]
      end

      def overall_front_crash_rating
        @ratings_hash["OverallFrontCrashRating"]
      end

      def overall_side_crash_rating
        @ratings_hash["OverallSideCrashRating"]
      end

      def rollover_rating
        @ratings_hash["RolloverRating"]
      end

      def rollover_possibility
        @ratings_hash["RolloverPossibility"]
      end

      def complaints_count
        @ratings_hash["ComplaintsCount"]
      end

      def recalls_count
        @ratings_hash["RecallsCount"]
      end

      def investigation_count
        @ratings_hash["InvestigationCount"]
      end

      def values
        @ratings_hash
      end

      def to_s
        @ratings_hash.inject(""){ |rating_string, (rating_key, rating_value)| rating_string << "#{rating_key}\n\t#{rating_value}\n" }
      end
    end
  end
end
