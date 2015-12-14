# New Car Assessment Program (NCAP) - 5 Star Safety Ratings
# http://webapi.nhtsa.gov/Default.aspx?SafetyRatings/API/5

module Nhtsa
  module Ncap

    class Years
      require 'json'
      require 'open-uri'

      def url
        "http://webapi.nhtsa.gov/api/SafetyRatings?format=json"
      end

      def years
        JSON.parse(open(url).read)["Results"].collect{|year| year["ModelYear"]}
      end
    end

    class Manufacturers
      def initialize(year)
        @year = year
      end

      def url
        "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/#{@year}?format=json"
      end
    end

    class Models
      def initialize(year, manufacturer)
        @year = year
        @manufacturer = manufacturer
      end

      def url
        "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/#{@year}/make/#{@manufacturer}?format=json"
      end
    end

    class Trims
      def initialize(year, manufacturer, model)
        @year = year
        @manufacturer = manufacturer
        @model = model
      end

      def url
        "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/#{@year}/make/#{@manufacturer}/model/#{@model}?format=json"
      end
    end

    class Ratings
      def initialize(vehicle_id)
        @vehicle_id = vehicle_id
      end

      def url
        "http://webapi.nhtsa.gov/api/SafetyRatings/VehicleId/#{@vehicle_id}?format=json"
      end
    end

  end
end
