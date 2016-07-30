require 'test_helper'

module SafetyRatings
  class RatingsTest < Minitest::Test

    def test_initialize_requires_input
      assert_raises(ArgumentError) { Nhtsa::SafetyRatings::Ratings.new }
    end

    def test_initialize_takes_varying_arguements
      assert_instance_of Nhtsa::SafetyRatings::Ratings, Nhtsa::SafetyRatings::Ratings.new(3832)
      assert_instance_of Nhtsa::SafetyRatings::Ratings, Nhtsa::SafetyRatings::Ratings.new(3832, 3834)
      assert_instance_of Nhtsa::SafetyRatings::Ratings, Nhtsa::SafetyRatings::Ratings.new(3832, 3834, 3881)
      assert_instance_of Nhtsa::SafetyRatings::Ratings, Nhtsa::SafetyRatings::Ratings.new(3832, 3834, 3881, 420)
    end

    def test_it_builds_url_as_expected
      expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/VehicleId/420?format=json"

      assert_equal expected_url, Nhtsa::SafetyRatings::Ratings.new(420).url(420)
    end

    def test_ratings_returns_an_array_of_ratings
      Nhtsa::SafetyRatings::Ratings.new(420).ratings.each do |rating|
        assert_instance_of Nhtsa::SafetyRatings::Rating, rating
      end
    end

    def test_values_should_return_a_harsh_of_ratings
      ratings_hash = {
        "OverallRating"=>"Not Rated",
        "OverallFrontCrashRating"=>"Not Rated",
        "FrontCrashDriversideRating"=>"4",
        "FrontCrashPassengersideRating"=>"4",
        "OverallSideCrashRating"=>"Not Rated",
        "SideCrashDriversideRating"=>"3",
        "SideCrashPassengersideRating"=>"2",
        "RolloverRating"=>"Not Rated",
        "RolloverRating2"=>"Not Rated",
        "RolloverPossibility"=>0,
        "RolloverPossibility2"=>0,
        "SidePoleCrashRating"=>"Not Rated",
        "NHTSAElectronicStabilityControl"=>"No",
        "NHTSAForwardCollisionWarning"=>"No",
        "NHTSALaneDepartureWarning"=>"No",
        "ComplaintsCount"=>57,
        "RecallsCount"=>3,
        "InvestigationCount"=>0,
        "ModelYear"=>1998,
        "Make"=>"MITSUBISHI",
        "Model"=>"GALANT",
        "VehicleDescription"=>"1998 Mitsubishi Galant 4-DR.",
        "VehicleId"=>3832
      }

      assert_equal [ratings_hash], Nhtsa::SafetyRatings::Ratings.new(3832).values
    end

    def test_to_s
      ratings_string_output = "OverallRating\n\tNot Rated\nOverallFrontCrashRating\n\tNot Rated\nFrontCrashDriversideRating\n\t4\nFrontCrashPassengersideRating\n\t4\nOverallSideCrashRating\n\tNot Rated\nSideCrashDriversideRating\n\t3\nSideCrashPassengersideRating\n\t2\nRolloverRating\n\tNot Rated\nRolloverRating2\n\tNot Rated\nRolloverPossibility\n\t0\nRolloverPossibility2\n\t0\nSidePoleCrashRating\n\tNot Rated\nNHTSAElectronicStabilityControl\n\tNo\nNHTSAForwardCollisionWarning\n\tNo\nNHTSALaneDepartureWarning\n\tNo\nComplaintsCount\n\t57\nRecallsCount\n\t3\nInvestigationCount\n\t0\nModelYear\n\t1998\nMake\n\tMITSUBISHI\nModel\n\tGALANT\nVehicleDescription\n\t1998 Mitsubishi Galant 4-DR.\nVehicleId\n\t3832\n"

      assert_equal ratings_string_output, Nhtsa::SafetyRatings::Ratings.new(3832).to_s
    end

    def test_initialize_takes_multiple_inputs
      assert_instance_of Nhtsa::SafetyRatings::Ratings, Nhtsa::SafetyRatings::Ratings.new(3832, 3834, 3881)
    end

  end
end
