module Nhtsa
  module SafetyRatings
    class Models
      def initialize(year, manufacturer)
        @year = Year.new(year)
        @manufacturer = Manufacturer.new(year, manufacturer)
        @models = JSON.parse(open(url).read)["Results"].collect{|model| Model.new(@year, @manufacturer, model["Model"])}
      end

      def url
        "#{BASE_URI}#{END_POINT}/#{@year}/#{URI.encode(@manufacturer.name)}#{DEFAULT_PARAMS}"
      end

      def models
        @models
      end

      def model_names
        @models.map(&:model_name)
      end

      def to_s
        @models.inject(""){|model_string, model| model_string << "#{model}\n"}
      end
    end
  end
end
