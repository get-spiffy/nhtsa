require 'test_helper'

class ModelsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/2015/make/Mitsubishi?format=json"

    assert_equal expected_url, Nhtsa::Ncap::Models.new(2015, "Mitsubishi").url
  end

  def test_models_returns_an_array_of_models
    model_names = ["ECLIPSE", "GALANT"]

    assert_equal model_names, Nhtsa::Ncap::Models.new(1998, "Mitsubishi").models
  end

end
