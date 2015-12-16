require 'test_helper'

class ManufacturersTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/Complaints/vehicle/modelyear/2014?format=json"

    assert_equal expected_url, Nhtsa::Complaints::Years.new(2014).url
  end

  def test_years_returns_an_array_of_manufacturer_names
    years = [1998, 1997, 1996, 1993, 1992, 1991]

    assert_equal years, Nhtsa::Complaints::Years.new(1998).manufacturers
  end

end
