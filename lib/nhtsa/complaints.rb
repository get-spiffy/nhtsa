# http://webapi.nhtsa.gov/Default.aspx?Complaints/API/81
# NHTSA's Office of Defects Investigation (ODI) - Complaints

require_relative "complaints/years"
require_relative "complaints/manufacturers"
require_relative "complaints/models"
require_relative "complaints/complaints"
require_relative "complaints/complaints_by_odi_number"

module Nhtsa
  module Complaints
    END_POINT = "/Complaints/vehicle"
  end
end
