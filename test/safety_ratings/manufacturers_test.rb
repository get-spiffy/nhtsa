require 'test_helper'

module SafetyRatings
  class ManufacturersTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/1998?format=json"

      assert_equal expected_url, Nhtsa::SafetyRatings::Manufacturers.new(1998).url
    end

    def test_manufacturers_returns_an_array_of_manufacturers
      Nhtsa::SafetyRatings::Manufacturers.new(1998).manufacturers.each do |manufacturer|
        assert_instance_of Nhtsa::SafetyRatings::Manufacturer, manufacturer
      end
    end

    def test_year_returns_a_year
      assert_instance_of Nhtsa::SafetyRatings::Year, Nhtsa::SafetyRatings::Manufacturers.new(1998).year
    end

    def test_values_returns_an_array_of_manufacturer_names
      manufacturer_names = [
        "ACURA", "AUDI", "BUICK", "CADILLAC", "CHEVROLET", "CHRYSLER", "DODGE","EAGLE",
        "FORD", "GM", "GMC", "HONDA", "HYUNDAI", "INFINITI", "ISUZU", "JEEP", "LEXUS",
        "LINCOLN", "MAZDA", "MERCEDES-BENZ", "MERCURY", "MITSUBISHI", "NISSAN",
        "OLDSMOBILE", "PLYMOUTH", "PONTIAC", "SAAB", "SATURN", "SUBARU", "TOYOTA",
        "VOLKSWAGEN", "VOLVO"
      ]

      assert_equal manufacturer_names, Nhtsa::SafetyRatings::Manufacturers.new(1998).values
    end

    def test_to_s_returns_an_array_of_manufacturer_names
      manufacturer_names = [
        "ACURA", "AUDI", "BUICK", "CADILLAC", "CHEVROLET", "CHRYSLER", "DODGE","EAGLE",
        "FORD", "GM", "GMC", "HONDA", "HYUNDAI", "INFINITI", "ISUZU", "JEEP", "LEXUS",
        "LINCOLN", "MAZDA", "MERCEDES-BENZ", "MERCURY", "MITSUBISHI", "NISSAN",
        "OLDSMOBILE", "PLYMOUTH", "PONTIAC", "SAAB", "SATURN", "SUBARU", "TOYOTA",
        "VOLKSWAGEN", "VOLVO"
      ]

      assert_equal manufacturer_names, Nhtsa::SafetyRatings::Manufacturers.new(1998).to_s
    end

  end
end
