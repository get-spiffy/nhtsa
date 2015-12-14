$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'nhtsa'

require 'minitest/autorun'
require 'minitest/pride'
require "fakeweb"

class Minitest::Test

  FakeWeb.register_uri(:get, "http://webapi.nhtsa.gov/api/SafetyRatings?format=json",
    :content_type => "application/json",
    :body => File.open(File.expand_path(".", "test/fixtures/ncap_years.json")).read
  )

end
