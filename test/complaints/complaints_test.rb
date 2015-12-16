require 'test_helper'

class ComplaintsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/2015/make/Mitsubishi/model/Lancer?format=json"

    assert_equal expected_url, Nhtsa::Complaints::Complaints.new(2015, "Mitsubishi", "Lancer").url
  end

  def test_trim_descriptions_returns_an_array_of_complaint_hashes
    expected_trim_descriptions = [{}]

    assert_equal expected_trim_descriptions, Nhtsa::Complaints::Complaints.new(1998, "Mitsubishi", "Galant").complaints
  end

end
