require 'test_helper'

class ComplaintsByOdiNumberTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/Complaints/vehicle/odinumber/10457576?format=json"

    assert_equal expected_url, Nhtsa::Complaints::ComplaintsByOdiNumberTest.new(10457576).url
  end

  def test_trim_descriptions_returns_an_array_of_complaint_hashes
    expected_trim_descriptions = [{}]

    assert_equal expected_trim_descriptions, Nhtsa::Complaints::ComplaintsByOdiNumberTest.new(10457576).complaints_by_odi_number
  end

end
