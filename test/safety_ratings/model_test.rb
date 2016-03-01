require 'test_helper'

module SafetyRatings
  class ModelTest < Minitest::Test
    def test_initialize_requires_input
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Model.new }
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Model.new(1991) }
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Model.new(1991, "Mitsubishi") }
    end

    def test_initialize_retuns_the_correct_object
      assert_instance_of Nhtsa::SafetyRatings::Model, Nhtsa::SafetyRatings::Model.new(1991, "Mitsubishi", "Lancer")
    end

    def test_initialize_with_a_year_object
      year = Nhtsa::SafetyRatings::Year.new(1991)
      assert_equal year, Nhtsa::SafetyRatings::Model.new(year, "Mitsubishi", "Lancer").year
    end

    def test_initialize_with_a_manufacturer_object
      manufacturer = Nhtsa::SafetyRatings::Manufacturer.new(1991, "Mitsubishi")
      assert_equal manufacturer, Nhtsa::SafetyRatings::Model.new(1991, manufacturer, "Lancer").manufacturer
    end

    def test_year_returns_a_year_instance
      assert_instance_of Nhtsa::SafetyRatings::Year, Nhtsa::SafetyRatings::Model.new(1991, "Mitsubishi", "Lancer").year
    end

    def test_manufacturer_returns_a_manufacturer_instance
      assert_instance_of Nhtsa::SafetyRatings::Manufacturer, Nhtsa::SafetyRatings::Model.new(1991, "Mitsubishi", "Lancer").manufacturer
    end

    def test_model_name_returns_the_model_name
      assert_equal "Lancer", Nhtsa::SafetyRatings::Model.new(1991, "Mitsubishi", "Lancer").model_name
    end

    def test_name_returns_the_model_name
      assert_equal "Lancer", Nhtsa::SafetyRatings::Model.new(1991, "Mitsubishi", "Lancer").name
    end

    def test_to_s_returnst_a_string_representation_of_model
      assert_equal "1991 Mitsubishi Lancer", Nhtsa::SafetyRatings::Model.new(1991, "Mitsubishi", "Lancer").to_s
    end
  end
end
