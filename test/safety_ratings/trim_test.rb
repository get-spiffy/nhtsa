require 'test_helper'

module SafetyRatings
  class TrimTest < Minitest::Test

    def test_initialize_requires_a_parameter
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Trim.new }
    end

    def test_initialize_creates_a_ratings_object
      assert_instance_of Nhtsa::SafetyRatings::Trim, Nhtsa::SafetyRatings::Trim.new({:one => 1})
    end

    def test_name_returns_the_vehicle_description
      trim = {
        "VehicleDescription" => "1998 Mitsubishi Galant 4-DR.",
        "VehicleId" => 3832
      }

      assert_equal "1998 Mitsubishi Galant 4-DR.", Nhtsa::SafetyRatings::Trim.new(trim).name
    end

    def test_trim_information_returns_the_arguement_parameter
      trim = {
        "VehicleDescription" => "1998 Mitsubishi Galant 4-DR.",
        "VehicleId" => 3832
      }

      assert_equal trim, Nhtsa::SafetyRatings::Trim.new(trim).trim_information
    end

    def test_trim_id_returns_the_vehicle_id
      trim = {
        "VehicleDescription" => "1998 Mitsubishi Galant 4-DR.",
        "VehicleId" => 3832
      }

      assert_equal 3832, Nhtsa::SafetyRatings::Trim.new(trim).trim_id
    end

    def test_trim_description_returns_the_vehicle_description
      trim = {
        "VehicleDescription" => "1998 Mitsubishi Galant 4-DR.",
        "VehicleId" => 3832
      }

      assert_equal "1998 Mitsubishi Galant 4-DR.", Nhtsa::SafetyRatings::Trim.new(trim).trim_description
    end

    def test_to_s_returns_a_string_representation_of_ratings
      trim = {
        "VehicleDescription" => "1998 Mitsubishi Galant 4-DR.",
        "VehicleId" => 3832
      }

      assert_equal "id: 3832\n\t1998 Mitsubishi Galant 4-DR.", Nhtsa::SafetyRatings::Trim.new(trim).to_s
    end
  end
end
