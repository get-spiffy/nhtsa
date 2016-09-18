module Nhtsa
  module SafetyRatings
    class Year
      def initialize(year)
        @year = year.to_i
      end

      def name
        @year
      end

      def to_s
        @year.to_s
      end
    end
  end
end
