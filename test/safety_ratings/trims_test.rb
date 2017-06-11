require 'test_helper'

module SafetyRatings
  class TrimsTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "https://webapi.nhtsa.gov/api/SafetyRatings/2015/Mitsubishi/Lancer?format=json"

      assert_equal expected_url, Nhtsa::SafetyRatings::Trims.new(2015, "Mitsubishi", "Lancer").url
    end

    def test_trim_descriptions_returns_an_array_of_descriptions
      expected_trim_descriptions = [
        "1998 Mitsubishi Galant 4-DR.",
        "1998 Mitsubishi Galant 4-DR. Station Wagon",
        "1998 Mitsubishi Galant 4-DR. VR-4"
      ]

      assert_equal expected_trim_descriptions, Nhtsa::SafetyRatings::Trims.new(1998, "Mitsubishi", "Galant").descriptions
    end

    def test_trim_ids_returns_an_array_of_ids
      expected_trim_ids = [3832, 3834, 3881]

      assert_equal expected_trim_ids, Nhtsa::SafetyRatings::Trims.new(1998, "Mitsubishi", "Galant").ids
    end

    def test_trims_returns_an_array_of_trims
      Nhtsa::SafetyRatings::Trims.new(1998, "Mitsubishi", "Galant").trims.each do |trim|
        assert_instance_of Nhtsa::SafetyRatings::Trim, trim
      end
    end

  end
end
