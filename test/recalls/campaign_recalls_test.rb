require 'test_helper'

class CampaignsTest < Minitest::Test

  def test_it_builds_url_as_expected
    expected_url = "http://webapi.nhtsa.gov/api/Recalls/vehicle/CampaignNumber/12V176000?format=json"

    assert_equal expected_url, Nhtsa::Recalls::CampaignRecalls.new("12V176000").url
  end

  def test_ratings_should_return_an_array_of_recalls
    recalls_array = [
      {
        "Manufacturer"=>"BMW OF NORTH AMERICA, LLC",
        "NHTSACampaignNumber"=>"12V176000",
        "ReportReceivedDate"=>"/Date(1334894400000-0400)/",
        "Component"=>"SEATS:FRONT ASSEMBLY:HEAD RESTRAINT",
        "PotentialNumberofUnitsAffected"=>7600,
        "Summary"=>"BMW IS RECALLING CERTAIN MODEL YEAR 2012 BMW 3-SERIES VEHICLES MANUFACTURED FROM OCTOBER 19, 2011, THROUGH MARCH 18, 2012, THAT HAVE FRONT SEAT HEAD RESTRAINTS THAT EXCEED THE DOWNWARD MOVEMENT LIMIT OF 25MM IN THE HIGHEST POSITION.  THUS, THESE VEHICLES FAIL TO COMPLY WITH THE REQUIREMENTS OF FEDERAL MOTOR VEHICLE SAFETY STANDARD NO. 202A,\"HEAD RESTRAINTS.\"   ",
        "Conequence"=>"IN THE EVENT OF A VEHICLE CRASH, THE HEAD RESTRAINT MAY UNEXPECTEDLY MOVE DOWN SLIGHTLY IF IT WAS ADJUSTED TO THE FULLY EXTENDED POSITION, INCREASING THE RISK OF PERSONAL INJURY. ",
        "Remedy"=>"BMW WILL NOTIFY OWNERS, AND DEALERS WILL ATTACH A CLAMP TO THE FRONT SEAT HEAD RESTRAINT POSTS, FREE OF CHARGE.  THE SAFETY RECALL BEGAN ON MAY 30, 2012.  OWNERS MAY CONTACT BMW CUSTOMER RELATIONS AND SERVICES AT 1-800-525-7417.  ",
        "Notes"=>"CUSTOMERS MAY CONTACT THE NATIONAL HIGHWAY TRAFFIC SAFETY ADMINISTRATION'S VEHICLE SAFETY HOTLINE AT 1-888-327-4236 (TTY: 1-800-424-9153); OR GO TO HTTP://WWW.SAFERCAR.GOV.",
        "ModelYear"=>"2012",
        "Make"=>"BMW",
        "Model"=>"3-SERIES"
      }
    ]

    assert_equal recalls_array, Nhtsa::Recalls::CampaignRecalls.new("12V176000").campaign_recalls
  end

end
