$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'nhtsa'

require 'minitest/autorun'
require 'minitest/pride'
require "fakeweb"

class Minitest::Test

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/safety_ratings/years.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings/1998?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/safety_ratings/manufacturers.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings/1998/Mitsubishi?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/safety_ratings/models.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings/1998/Mitsubishi/Galant?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/safety_ratings/trims.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings/VehicleId/3832?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/safety_ratings/ratings.json")).read
  )

  # recalls

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Recalls/vehicle?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/recalls/years.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Recalls/vehicle/1998?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/recalls/manufacturers.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Recalls/vehicle/1998/Mitsubishi?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/recalls/models.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Recalls/vehicle/1998/Mitsubishi/Galant?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/recalls/recalls.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Recalls/vehicle/CampaignNumber/12V176000?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/recalls/campaign_recalls.json")).read
  )

  # Complaints

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/years.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle/1998?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/manufacturers.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle/1998/Mitsubishi?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/models.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle/1998/BMW/318?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/complaints.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle/odinumber/10457576?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/complaints_by_odi_number.json")).read
  )

  # Civil Penalties

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/CivilPenalties?format=json",
   :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/civil_penalties/civil_penalties.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/CivilPenalties/2012?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/civil_penalties/civil_penalty_by_year.json")).read
  )

  # Child Safety Seat Inspection Station Locator

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/CSSIStation/zip/63640?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/child_safety_seat_inspection_station_loccator/get_by_zip_code.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/CSSIStation/state/NV?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/child_safety_seat_inspection_station_loccator/get_by_state.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/CSSIStation?lat=30.1783&long=-96.3911&miles=50&format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/child_safety_seat_inspection_station_loccator/get_by_geo_location.json")).read
  )


end
