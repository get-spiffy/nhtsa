require 'test_helper'

class YearsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings?format=json"

    assert_equal expected_url, Nhtsa::Ncap::Years.new.url
  end

end
