# http://webapi.nhtsa.gov/api/Recalls/vehicle?format=json

require_relative "recalls/years"
require_relative "recalls/manufacturers"
require_relative "recalls/models"
require_relative "recalls/recalls"
require_relative "recalls/campaign_recalls"

module Nhtsa
  module Recalls
    END_POINT = "/Recalls/vehicle"
  end
end
