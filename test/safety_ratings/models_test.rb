require 'test_helper'

module SafetyRatings
  class ModelsTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/2015/Mitsubishi?format=json"

      assert_equal expected_url, Nhtsa::SafetyRatings::Models.new(2015, "Mitsubishi").url
    end

    def test_models_returns_an_array_of_models
      Nhtsa::SafetyRatings::Models.new(1998, "Mitsubishi").models.each do |model|
        assert_instance_of Nhtsa::SafetyRatings::Model, model
      end
    end

    def test_values_returns_an_array_of_model_names
      model_names = ["ECLIPSE", "GALANT"]

      assert_equal model_names, Nhtsa::SafetyRatings::Models.new(1998, "Mitsubishi").model_names
    end

    def test_to_s_returns_a_string_representation_of_the_models
      model_string = "1998 Mitsubishi ECLIPSE\n1998 Mitsubishi GALANT\n"

      assert_equal model_string, Nhtsa::SafetyRatings::Models.new(1998, "Mitsubishi").to_s
    end

  end
end
