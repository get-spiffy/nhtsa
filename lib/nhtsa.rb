require "nhtsa/version"
require "nhtsa/safety_ratings"
require "nhtsa/recalls"
require "nhtsa/vehicles"
require "nhtsa/complaints"
require "nhtsa/civil_penalties"
require "nhtsa/child_safety_seat_inspection_station_locator"

module Nhtsa
  require 'json'
  require 'open-uri'

  BASE_URI = "https://api.nhtsa.gov"
  DEFAULT_PARAMS = "?"
end
