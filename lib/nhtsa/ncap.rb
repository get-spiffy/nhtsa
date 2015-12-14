# New Car Assessment Program (NCAP) - 5 Star Safety Ratings
# http://webapi.nhtsa.gov/Default.aspx?SafetyRatings/API/5

module Nhtsa
  module Ncap
    require 'json'
    require 'open-uri'

    class Years
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

      def manufacturers
        JSON.parse(open(url).read)["Results"].collect{|manufacturer| manufacturer["Make"]}
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

      def models
        JSON.parse(open(url).read)["Results"].collect{|model| model["Model"]}
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

    class Ratings
      def initialize(vehicle_id)
        @vehicle_id = vehicle_id
      end

      def url
        "http://webapi.nhtsa.gov/api/SafetyRatings/VehicleId/#{@vehicle_id}?format=json"
      end

      def ratings
        JSON.parse(open(url).read)["Results"].first
      end
    end

  end
end
