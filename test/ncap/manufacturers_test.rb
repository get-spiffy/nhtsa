require 'test_helper'

class ManufacturersTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/2014?format=json"

    assert_equal expected_url, Nhtsa::Ncap::Manufacturers.new(2014).url
  end

end
