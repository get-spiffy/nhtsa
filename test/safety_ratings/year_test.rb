require 'test_helper'

module SafetyRatings
  class YearTest < Minitest::Test

    def test_initialize_works
      assert_instance_of Nhtsa::SafetyRatings::Year, Nhtsa::SafetyRatings::Year.new(1991)
    end

    def test_initialize_requires_input
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Year.new }
    end

    def test_year_returns_year_as_a_numeric_value
      assert_equal 1991, Nhtsa::SafetyRatings::Year.new(1991).name
      assert_equal 1991, Nhtsa::SafetyRatings::Year.new("1991").name
    end

    def test_to_s_returns_year_as_a_string
      assert_equal "1991", Nhtsa::SafetyRatings::Year.new(1991).to_s
    end
  end
end
