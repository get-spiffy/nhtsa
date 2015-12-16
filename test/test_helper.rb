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

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/1998?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/safety_ratings/manufacturers.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/1998/make/Mitsubishi?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/safety_ratings/models.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/1998/make/Mitsubishi/model/Galant?format=json",
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

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Recalls/vehicle/modelyear/1998?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/recalls/manufacturers.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Recalls/vehicle/modelyear/1998/make/Mitsubishi?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/recalls/models.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Recalls/vehicle/modelyear/1998/make/Mitsubishi/model/Galant?format=json",
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

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/1998?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/manufacturers.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/1998/make/Mitsubishi?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/models.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/1998/make/BMW/model/318?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/complaints.json")).read
  )

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/Complaints/vehicle/odinumber/10457576?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/complaints/complaints_by_odi_number.json")).read
  )

end
