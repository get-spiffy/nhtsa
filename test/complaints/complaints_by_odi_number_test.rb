require 'test_helper'

module Complaints
  class ComplaintsByOdiNumberTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "https://webapi.nhtsa.gov/api/Complaints/vehicle/odinumber/10457576?format=json"

      assert_equal expected_url, Nhtsa::Complaints::ComplaintsByOdiNumber.new(10457576).url
    end

    def test_trim_descriptions_returns_an_array_of_complaint_hashes
      expected_trim_descriptions = [
        {
          "ODINumber"=>10457576,
          "Manufacturer"=>"BMW of North America, LLC",
          "Crash"=>"No",
          "Fire"=>"No",
          "NumberOfInjured"=>0,
          "NumberOfDeaths"=>0,
          "DateofIncident"=>"\/Date(1335412800000-0400)\/",
          "DateComplaintFiled"=>"\/Date(1336190400000-0400)\/",
          "VIN"=>"WBA3A5C54CF",
          "Component"=>
          "SEATS",
          "Summary"=>"WHEN I PURCHASED 328I SOMEONE ACCIDENTALLY PULL UP THE DRIVER-SIDE HEADREST FROM DOWN POSITION. BUT I AM SHORT AND MY HEAD IS PROTECTED WHEN THE HEADREST(CONSTRAINT) IS IN ORIGINAL DOWN POSITION. I WANTED IT TO BE PUT DOWN IN ORIGINAL POSITION. NO ONE INCLUDING SERVICE DEPT TECHNICIAN COULD DO IT. AND DURING THE PROCESS THEY PULL THE PASSENGER SIDE HEADREST UP TOO. NOW BOTH SIDES COULD NOT BE PUT DOWN (BY THE WAY BOTH COULD NOT BE PULLED OUT NEITHER), EVEN THOUGH MANUAL SAID THEY COULD BE PUT DOWN AND OUT TOO. AND I CALLED BMW NORTH AMERICA CUSTOMER SERVICE AND THEY DON'T HAVE ANY ANSWER NOR RELATED INFORMATION.\r\n \r\nI'M CONCERNED SINCE IT COULD BE A SAFETY ISSUE TO ME. MAY I ASK YOUR HELP IF IT CAN BE RESEARCHED WHY THEY CAN NOT BE PUT DOWN IN ORIGINAL POSITION? I HOPE IT'S NOT A DEFECT PROBLEM, IS IT?  *TR",
          "ProductType"=>"VEHICLE",
          "ModelYear"=>"2012",
          "Make"=>"BMW",
          "Model"=>"3-SERIES"
        }
      ]

      assert_equal expected_trim_descriptions, Nhtsa::Complaints::ComplaintsByOdiNumber.new(10457576).complaints_by_odi_number
    end

  end
end
