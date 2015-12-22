# http://webapi.nhtsa.gov/Default.aspx?Complaints/API/81
# NHTSA's Office of Defects Investigation (ODI) - Complaints

module Nhtsa
  module Complaints

    END_POINT = "/Complaints/vehicle"

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

    class ComplaintsByOdiNumber
      def initialize(odi_number)
        @odi_number = odi_number
      end

      def url
        BASE_URI + END_POINT + "/odinumber/#{@odi_number}" + DEFAULT_PARAMS
      end

      def complaints_by_odi_number
        JSON.parse(open(url).read)["Results"]
      end
    end

  end
end
