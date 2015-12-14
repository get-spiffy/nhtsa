# New Car Assessment Program (NCAP) - 5 Star Safety Ratings
# http://webapi.nhtsa.gov/Default.aspx?SafetyRatings/API/5

module Nhtsa
  class years

    def initialize(format = "json")
      @format = format
    end

    def year_url
      "http://webapi.nhtsa.gov/api/SafetyRatings?format=#{@format}"
    end
  end
end
