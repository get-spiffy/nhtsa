# http://webapi.nhtsa.gov/Default.aspx?Complaints/API/81
# NHTSA's Office of Defects Investigation (ODI) - Complaints

module Nhtsa
  module Complaints

    class Years
      def url
        "http://webapi.nhtsa.gov/api/Complaints/vehicle?format=json"
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
        "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/#{@year}?format=json"
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
        "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/#{@year}/make/#{@manufacturer}?format=json"
      end

      def models
        JSON.parse(open(url).read)["Results"].collect{|model| model["Model"]}
      end
    end

    class Complaints
      def initialize(year, manufacturer, model)
        @year = year
        @manufacturer = manufacturer
        @model = model
      end

      def url
        "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/#{@year}/make/#{@manufacturer}/model/#{@model}?format=json"
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
        "http://webapi.nhtsa.gov/api/Complaints/vehicle/odinumber/#{@odi_number}?format=json"
      end

      def complaints_by_odi_number
        JSON.parse(open(url).read)["Results"]
      end
    end

  end
end
