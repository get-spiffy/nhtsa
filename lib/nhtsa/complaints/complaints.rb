module Nhtsa
  module Complaints
    class Complaints
      def initialize(year, manufacturer, model)
        @year = year
        @manufacturer = URI::encode(manufacturer)
        @model = URI::encode(model)
      end

      def url
        BASE_URI + END_POINT + "/#{@year}/#{@manufacturer}/#{@model}" + DEFAULT_PARAMS
      end

      def complaints
        JSON.parse(open(url).read)["Results"]
      end
    end
  end
end
