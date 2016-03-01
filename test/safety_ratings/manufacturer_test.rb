require 'test_helper'

module SafetyRatings
  class ManufacturerTest < Minitest::Test
    def test_initialize_requires_input
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Manufacturer.new }
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Manufacturer.new }
    end

    def test_initialze_creates_an_instance
      assert_instance_of Nhtsa::SafetyRatings::Manufacturer, Nhtsa::SafetyRatings::Manufacturer.new(1991, "Mitsubishi")
    end

    def test_year_returns_the_year
      assert_instance_of Nhtsa::SafetyRatings::Year, Nhtsa::SafetyRatings::Manufacturer.new(1991, "Mitsubishi").year
    end

    def test_year_can_be_queried_for_name
      assert_equal 1991, Nhtsa::SafetyRatings::Manufacturer.new(1991, "Mitsubishi").year.name
    end

    def test_if_you_pass_in_a_year_object
      year = Nhtsa::SafetyRatings::Year.new(1991)
      assert_equal year, Nhtsa::SafetyRatings::Manufacturer.new(year, "Mitsubishi").year
    end

    def test_name_returns_the_name
      assert_equal "Mitsubishi", Nhtsa::SafetyRatings::Manufacturer.new(1991, "Mitsubishi").name
    end

    def test_to_s_returns_the_year_and_manufacturer_name_values
      assert_equal "Mitsubishi", Nhtsa::SafetyRatings::Manufacturer.new(1991, "Mitsubishi").to_s
    end
  end
end
