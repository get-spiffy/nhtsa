require 'test_helper'

class TrimsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/2015/make/Mitsubishi/model/Lancer?format=json"

    assert_equal expected_url, Nhtsa::Ncap::Trims.new(2015, "Mitsubishi", "Lancer").url
  end

  def test_trim_descriptions_returns_an_array_of_trim_descriptions
    expected_trim_descriptions = [
      "1998 Mitsubishi Galant 4-DR.",
      "1998 Mitsubishi Galant 4-DR. Station Wagon",
      "1998 Mitsubishi Galant 4-DR. VR-4"
    ]

    assert_equal expected_trim_descriptions, Nhtsa::Ncap::Trims.new(1998, "Mitsubishi", "Galant").trim_descriptions
  end

  def test_trim_ids_returns_an_array_of_trim_ids
    expected_trim_ids = [3832, 3834, 3881]

    assert_equal expected_trim_ids, Nhtsa::Ncap::Trims.new(1998, "Mitsubishi", "Galant").trim_ids
  end

  def test_trims_returns_an_array_of_trim_hashes
    expected_trims = [
      {:description => "1998 Mitsubishi Galant 4-DR.", :id => 3832},
      {:description => "1998 Mitsubishi Galant 4-DR. Station Wagon", :id => 3834},
      {:description => "1998 Mitsubishi Galant 4-DR. VR-4", :id => 3881}
    ]

    assert_equal expected_trims, Nhtsa::Ncap::Trims.new(1998, "Mitsubishi", "Galant").trims
  end

end
