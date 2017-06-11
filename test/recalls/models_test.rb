require 'test_helper'

class ModelsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "https://webapi.nhtsa.gov/api/Recalls/vehicle/1991/Mitsubishi?format=json"

    assert_equal expected_url, Nhtsa::Recalls::Models.new(1991, "Mitsubishi").url
  end

  def test_models_returns_an_array_of_models
    model_names = ["3000GT", "DIAMANTE", "ECLIPSE", "ECLIPSE SPYDER", "GALANT", "MIRAGE", "MONTERO", "MONTERO SPORT", "NATIVA", "SPYDER"]

    assert_equal model_names, Nhtsa::Recalls::Models.new(1998, "Mitsubishi").models
  end

end
