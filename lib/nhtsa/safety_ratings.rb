# New Car Assessment Program (NCAP) - 5 Star Safety Ratings
# http://webapi.nhtsa.gov/Default.aspx?SafetyRatings/API/5

require_relative "safety_ratings/years"
require_relative "safety_ratings/manufacturers"
require_relative "safety_ratings/models"
require_relative "safety_ratings/trims"
require_relative "safety_ratings/ratings"

module Nhtsa
  module SafetyRatings
    END_POINT = "/SafetyRatings"
  end
end
