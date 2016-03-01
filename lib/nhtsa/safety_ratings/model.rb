module Nhtsa
  module SafetyRatings
    class Model
      def initialize(year, manufacturer, model_name)
        @year = (year.is_a? Nhtsa::SafetyRatings::Year) ? year : Nhtsa::SafetyRatings::Year.new(year)
        @manufacturer = (manufacturer.is_a? Nhtsa::SafetyRatings::Manufacturer) ? manufacturer : Nhtsa::SafetyRatings::Manufacturer.new(year, manufacturer)
        @model_name = model_name
      end

      def year
        @year
      end

      def manufacturer
        @manufacturer
      end

      def model_name
        @model_name
      end

      def name
        @model_name
      end

      def to_s
        "#{@year} #{@manufacturer} #{@model_name}"
      end
    end
  end
end
