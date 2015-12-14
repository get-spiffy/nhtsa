require 'test_helper'

class RatingsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/VehicleId/420?format=json"

    assert_equal expected_url, Nhtsa::Ncap::Ratings.new(420).url
  end

end
