module Nhtsa
  module SafetyRatings
    class Manufacturer
      def initialize(year, manufacturer_name)
        @year = (year.is_a? Nhtsa::SafetyRatings::Year) ? year : Nhtsa::SafetyRatings::Year.new(year)
        @manufacturer_name = manufacturer_name
      end

      def year
        @year
      end

      def name
        @manufacturer_name
      end

      def manufacturer_name
        @manufacturer_name
      end

      def to_s
        "#{@manufacturer_name}"
      end
    end
  end
end
