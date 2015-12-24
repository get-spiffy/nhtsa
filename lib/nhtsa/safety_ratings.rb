# New Car Assessment Program (NCAP) - 5 Star Safety Ratings
# http://webapi.nhtsa.gov/Default.aspx?SafetyRatings/API/5

module Nhtsa
  module SafetyRatings

    END_POINT = "/SafetyRatings"

    class Years
      def url
        BASE_URI + END_POINT + DEFAULT_PARAMS
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
        BASE_URI + END_POINT + "/#{@year}" + DEFAULT_PARAMS
      end

      def manufacturers
        JSON.parse(open(url).read)["Results"].collect{|manufacturer| manufacturer["Make"]}
      end
    end

    class Models
      def initialize(year, manufacturer)
        @year = year
        @manufacturer = URI::encode(manufacturer)
      end

      def url
        BASE_URI + END_POINT + "/#{@year}/#{@manufacturer}" + DEFAULT_PARAMS
      end

      def models
        JSON.parse(open(url).read)["Results"].collect{|model| model["Model"]}
      end
    end

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

    class Ratings
      def initialize(vehicle_id)
        @vehicle_id = vehicle_id
      end

      def url
        BASE_URI + END_POINT + "/VehicleId/#{@vehicle_id}" + DEFAULT_PARAMS
      end

      def ratings
        JSON.parse(open(url).read)["Results"].first
      end
    end

  end
end
