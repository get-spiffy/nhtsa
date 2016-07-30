module Nhtsa
  module SafetyRatings
    class Trims
      def initialize(year, manufacturer, model)
        @year = Year.new(year)
        @manufacturer = Manufacturer.new(year, manufacturer)
        @model = Model.new(year, manufacturer, model)
        @trims = JSON.parse(open(url).read)["Results"].collect{|trim| Trim.new(trim)}
      end

      def url
        BASE_URI + END_POINT + "/#{@year}/#{URI.encode(@manufacturer.name)}/#{URI.encode(@model.name)}" + DEFAULT_PARAMS
      end

      def year
        @year
      end

      def manufacturer
        @manufacturer
      end

      def model
        @model
      end

      def trims
        @trims
      end

      def descriptions
        @trims.map(&:trim_description)
      end

      def ids
        @trims.map(&:trim_id)
      end
    end
  end
end
