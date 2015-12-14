require 'test_helper'

class TrimsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/2015/make/Mitsubishi/model/Lancer?format=json"

    assert_equal expected_url, Nhtsa::Ncap::Trims.new(2015, "Mitsubishi", "Lancer").url
  end

end
