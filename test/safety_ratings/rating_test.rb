require 'test_helper'

module SafetyRatings
  class RatingTest < Minitest::Test

    def setup
      @ratings_hash = {
        "OverallRating" => "Not Rated",
        "OverallFrontCrashRating" => "Not Rated",
        "FrontCrashDriversideRating" => "4",
        "FrontCrashPassengersideRating" => "4",
        "OverallSideCrashRating" => "Not Rated",
        "SideCrashDriversideRating" => "3",
        "SideCrashPassengersideRating" => "2",
        "RolloverRating" => "Not Rated",
        "RolloverRating2" => "Not Rated",
        "RolloverPossibility" => 0,
        "RolloverPossibility2" => 0,
        "SidePoleCrashRating" => "Not Rated",
        "NHTSAElectronicStabilityControl" => "No",
        "NHTSAForwardCollisionWarning" => "No",
        "NHTSALaneDepartureWarning" => "No",
        "ComplaintsCount" => 57,
        "RecallsCount" => 3,
        "InvestigationCount" => 0,
        "ModelYear" => 1998,
        "Make" => "MITSUBISHI",
        "Model" => "GALANT",
        "VehicleDescription" => "1998 Mitsubishi Galant 4-DR.",
        "VehicleId" => 3832
      }
    end

    def test_initialize_requires_input
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Rating.new }
    end

    def test_initialize_returns_a_rating_object
      assert_instance_of Nhtsa::SafetyRatings::Rating, Nhtsa::SafetyRatings::Rating.new({:one => 1})
    end

    def test_name_returns_the_vehicle_description
      assert_equal "1998 Mitsubishi Galant 4-DR.", Nhtsa::SafetyRatings::Rating.new(@ratings_hash).name
    end

    def test_vehicle_picture_returns_an_image_uri
      assert_equal nil, Nhtsa::SafetyRatings::Rating.new(@ratings_hash).vehicle_picture
    end

    def test_overeall_rating
      assert_equal "Not Rated", Nhtsa::SafetyRatings::Rating.new(@ratings_hash).overall_rating
    end

    def test_overall_front_crash_rating
      assert_equal "Not Rated", Nhtsa::SafetyRatings::Rating.new(@ratings_hash).overall_front_crash_rating
    end

    def test_overall_side_crash_rating
      assert_equal "Not Rated", Nhtsa::SafetyRatings::Rating.new(@ratings_hash).overall_side_crash_rating
    end

    def test_rollover_rating
      assert_equal "Not Rated", Nhtsa::SafetyRatings::Rating.new(@ratings_hash).rollover_rating
    end

    def test_rollover_possibility
      assert_equal 0, Nhtsa::SafetyRatings::Rating.new(@ratings_hash).rollover_possibility
    end

    def test_complaints_count
      assert_equal 57, Nhtsa::SafetyRatings::Rating.new(@ratings_hash).complaints_count
    end

    def test_recalls_count
      assert_equal 3, Nhtsa::SafetyRatings::Rating.new(@ratings_hash).recalls_count
    end

    def test_investigation_count
      assert_equal 0, Nhtsa::SafetyRatings::Rating.new(@ratings_hash).investigation_count
    end

    def test_values_returns_the_ratings_hash
      assert_equal @ratings_hash, Nhtsa::SafetyRatings::Rating.new(@ratings_hash).values
    end

    def test_to_s_returns_a_string_representation_of_the_ratings_hash
      ratings_hash_string = "OverallRating\n\tNot Rated\nOverallFrontCrashRating\n\tNot Rated\nFrontCrashDriversideRating\n\t4\nFrontCrashPassengersideRating\n\t4\nOverallSideCrashRating\n\tNot Rated\nSideCrashDriversideRating\n\t3\nSideCrashPassengersideRating\n\t2\nRolloverRating\n\tNot Rated\nRolloverRating2\n\tNot Rated\nRolloverPossibility\n\t0\nRolloverPossibility2\n\t0\nSidePoleCrashRating\n\tNot Rated\nNHTSAElectronicStabilityControl\n\tNo\nNHTSAForwardCollisionWarning\n\tNo\nNHTSALaneDepartureWarning\n\tNo\nComplaintsCount\n\t57\nRecallsCount\n\t3\nInvestigationCount\n\t0\nModelYear\n\t1998\nMake\n\tMITSUBISHI\nModel\n\tGALANT\nVehicleDescription\n\t1998 Mitsubishi Galant 4-DR.\nVehicleId\n\t3832\n"

      assert_equal ratings_hash_string, Nhtsa::SafetyRatings::Rating.new(@ratings_hash).to_s
    end
  end
end
