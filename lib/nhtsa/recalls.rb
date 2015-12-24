# http://webapi.nhtsa.gov/api/Recalls/vehicle?format=json

module Nhtsa
  module Recalls

    END_POINT = "/Recalls/vehicle"

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

    class Recalls
      def initialize(year, manufacturer, model)
        @year = year
        @manufacturer = URI::encode(manufacturer)
        @model = URI::encode(model)
      end

      def url
        BASE_URI + END_POINT + "/#{@year}/#{@manufacturer}/#{@model}" + DEFAULT_PARAMS
      end

      def recalls
        JSON.parse(open(url).read)["Results"]
      end
    end

    class CampaignRecalls
      def initialize(campaign_number)
        @campaign_number = campaign_number
      end

      def url
        BASE_URI + END_POINT + "/CampaignNumber/#{@campaign_number}" + DEFAULT_PARAMS
      end

      def campaign_recalls
        JSON.parse(open(url).read)["Results"]
      end
    end

  end
end
