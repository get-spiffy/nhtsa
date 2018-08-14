# http://webapi.nhtsa.gov/api/vehicles/DecodeVinValues?format=json

require_relative "vehicles/decode_vin_values"

module Nhtsa
  module Vehicles
    BASE_URI = "https://vpic.nhtsa.dot.gov/api"
    END_POINT = "/vehicles"
  end
end
