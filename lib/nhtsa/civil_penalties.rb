# NHTSA Civil Penalty Payments
# http://webapi.nhtsa.gov/Default.aspx?CivilPenalties/API/251

require_relative "civil_penalties/civil_penalties"
require_relative "civil_penalties/civil_penalties_by_year"

module Nhtsa
  module CivilPenalties
    END_POINT = "/CivilPenalties"
  end
end
