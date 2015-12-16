require 'test_helper'

class ModelsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/2015/make/Mitsubishi?format=json"

    assert_equal expected_url, Nhtsa::Complaints::Models.new(2015, "Mitsubishi").url
  end

  def test_models_returns_an_array_of_model_names
    model_names = ["ECLIPSE", "GALANT"]

    assert_equal model_names, Nhtsa::Ncap::Complaints.new(1998, "Mitsubishi").models
  end

end
