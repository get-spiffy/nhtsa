module Nhtsa
  module Recalls
    class Recalls
      def initialize(year, manufacturer, model)
        @year = year
        @manufacturer = URI::encode(manufacturer)
        @model = URI::encode(model)
      end

      def url
        "#{BASE_URI}#{END_POINT}/recallsByVehicle#{DEFAULT_PARAMS}&make=#{@manufacturer}&model=#{@model}&modelYear=#{@year}"
      end

      def recalls
        JSON.parse(open(url).read)["Results"]
      end
    end
  end
end
