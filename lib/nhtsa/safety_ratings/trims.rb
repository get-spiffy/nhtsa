module Nhtsa
  module SafetyRatings
    class Trims
      def initialize(year, manufacturer, model)
        @year = year
        @manufacturer = URI::encode(manufacturer)
        @model = URI::encode(model)
      end

      def url
        BASE_URI + END_POINT + "/#{@year}/#{@manufacturer}/#{@model}" + DEFAULT_PARAMS
      end

      def trims
        JSON.parse(open(url).read)["Results"].collect do |trim|
          {
            :description => trim["VehicleDescription"],
            :id => trim["VehicleId"]
          }
        end
      end

      def trim_descriptions
        JSON.parse(open(url).read)["Results"].collect{|trim| trim["VehicleDescription"]}
      end

      def trim_ids
        JSON.parse(open(url).read)["Results"].collect{|trim| trim["VehicleId"]}
      end
    end
  end
end
