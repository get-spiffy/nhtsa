require 'test_helper'

class ModelsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/2015/make/Mitsubishi?format=json"

    assert_equal expected_url, Nhtsa::Ncap::Models.new(2015, "Mitsubishi").url
  end

end
