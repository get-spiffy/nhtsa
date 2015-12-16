require 'test_helper'

module SafetyRatings
  class RatingsTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "http://webapi.nhtsa.gov/api/SafetyRatings/VehicleId/420?format=json"

      assert_equal expected_url, Nhtsa::SafetyRatings::Ratings.new(420).url
    end

    def test_ratings_should_return_a_harsh_of_ratings
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

      assert_equal ratings_hash, Nhtsa::SafetyRatings::Ratings.new(3832).ratings
    end

  end
end
