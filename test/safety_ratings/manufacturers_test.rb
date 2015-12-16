require 'test_helper'

module SafetyRatings
  class ManufacturersTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/modelyear/2014?format=json"

      assert_equal expected_url, Nhtsa::SafetyRatings::Manufacturers.new(2014).url
    end

    def test_manufacturers_returns_an_array_of_manufacturer_names
      manufacturer_names = [
        "ACURA", "AUDI", "BUICK", "CADILLAC", "CHEVROLET", "CHRYSLER", "DODGE","EAGLE",
        "FORD", "GM", "GMC", "HONDA", "HYUNDAI", "INFINITI", "ISUZU", "JEEP", "LEXUS",
        "LINCOLN", "MAZDA", "MERCEDES-BENZ", "MERCURY", "MITSUBISHI", "NISSAN",
        "OLDSMOBILE", "PLYMOUTH", "PONTIAC", "SAAB", "SATURN", "SUBARU", "TOYOTA",
        "VOLKSWAGEN", "VOLVO"
      ]

      assert_equal manufacturer_names, Nhtsa::SafetyRatings::Manufacturers.new(1998).manufacturers
    end

  end
end
