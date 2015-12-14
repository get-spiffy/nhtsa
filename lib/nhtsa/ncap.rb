# New Car Assessment Program (NCAP) - 5 Star Safety Ratings
# http://webapi.nhtsa.gov/Default.aspx?SafetyRatings/API/5

module Nhtsa
  class Years

    def initialize(format = "json")
      @format = format
    end

    def year_url
      "http://webapi.nhtsa.gov/api/SafetyRatings?format=#{@format}"
    end
  end

  class Manufacturers
    def initialize(format = "json", year)
      @format = format
      @year = year
    end

    def manufacturers_url
      "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/#{@year}?format=#{@format}"
    end
  end

  class Models
    def initialize(format = "json", year, manufacturer)
      @format = format
      @year = year
      @manufacturer = manufacturer
    end

    def url
      "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/#{@year}/make/#{@manufacturer}?format=#{@format}"
    end
  end

  class Trims
    def initialize(format = "json", year, manufacturer, model)
      @format = format
      @year = year
      @manufacturer = manufacturer
      @model = model
    end

    def url
      "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/#{@year}/make/#{@manufacturer}/model/#{@model}?format=#{@model}"
    end
  end

  class Ratings
    def initialize(format = "json", vehicle_id)
      @format = format
      @vehicle_id = vehicle_id
    end

    def url
      "http://webapi.nhtsa.gov/api/SafetyRatings/VehicleId/#{@vehicle_id}?format=#{@format}"
    end
  end

end
