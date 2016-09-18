# NHTSA Child Safety Seat Inspection Station Locator
# http://webapi.nhtsa.gov/Default.aspx?CSSIStations/API/80

require_relative "child_safety_seat_inspection_station_locator/get_by_zip_code"
require_relative "child_safety_seat_inspection_station_locator/get_by_state"
require_relative "child_safety_seat_inspection_station_locator/get_by_geo_location"

module Nhtsa
  module ChildSafetySeatInspectionStationLocator
    END_POINT = "/CSSIStation"
    CPS_WEEK = "/cpsweek"
    SPANISH = "/lang/spanish"
  end
end
