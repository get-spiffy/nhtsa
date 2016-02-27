module Nhtsa
  module SafetyRatings
    class Year
      def initialize(year)
        @year = year
      end

      def value
        @year
      end

      def to_s
        @year.to_s
      end
    end
  end
end
