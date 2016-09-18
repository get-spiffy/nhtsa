require 'test_helper'

module SafetyRatings
  class YearsTest < Minitest::Test

    def test_it_initialized_the_correct_object
      assert_instance_of Nhtsa::SafetyRatings::Years, Nhtsa::SafetyRatings::Years.new
    end

    def test_years_returns_an_array_of_year_objects
      Nhtsa::SafetyRatings::Years.new.years.each do |year|
        assert_instance_of Nhtsa::SafetyRatings::Year, year
      end
    end

    def test_it_builds_url_as_expected
      expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings?format=json"

      assert_equal expected_url, Nhtsa::SafetyRatings::Years.new.url
    end

    def test_years_returns_an_array_of_years
      years = [1998, 1997, 1996, 1993, 1992, 1991]

      assert_equal years, Nhtsa::SafetyRatings::Years.new.values
    end

    def test_to_s_returns_an_array_of_year_values
      years = %w(1998 1997 1996 1993 1992 1991)

      assert_equal years, Nhtsa::SafetyRatings::Years.new.to_s
    end
  end
end
