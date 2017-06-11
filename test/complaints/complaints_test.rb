require 'test_helper'

module Complaints
  class ComplaintsTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "https://webapi.nhtsa.gov/api/Complaints/vehicle/2015/Mitsubishi/Lancer?format=json"

      assert_equal expected_url, Nhtsa::Complaints::Complaints.new(2015, "Mitsubishi", "Lancer").url
    end

    def test_trim_descriptions_returns_an_array_of_complaint_hashes
      array_of_complaint_hashes = [
        {
          "ODINumber"=>707631,
          "Manufacturer"=>"BMW of North America, LLC",
          "Crash"=>"No",
          "Fire"=>"No",
          "NumberOfInjured"=>0,
          "NumberOfDeaths"=>0,
          "DateofIncident"=>"\/Date(928814400000-0400)\/",
          "DateComplaintFiled"=>"\/Date(929592000000-0400)\/",
          "VIN"=>"WBACG7327WA",
          "Component"=>"POWER TRAIN:MANUAL TRANSMISSION",
          "Summary"=>"TRANSMISSION KEPT POPPING OUT OF GEAR.  ORIGINAL AND REPLACEMENT TRANSMISSION FAILED IN 1 YEAR.  BMW STATES THAT IT ISN'T WORTHY OF RECALL BECAUSE IT IS TOO RARE.  IT CAN'T BE THAT RARE IF IT HAPPENED TO ME TWICE, AND  TO A FRIEND ONCE IN THE LAST YEAR. *AK",
          "ProductType"=>"VEHICLE",
          "ModelYear"=>"1998",
          "Make"=>"BMW",
          "Model"=>"318"
        },
        {
          "ODINumber"=>822392,
          "Manufacturer"=>"BMW of North America, LLC",
          "Crash"=>"Yes",
          "Fire"=>"No",
          "NumberOfInjured"=>0,
          "NumberOfDeaths"=>0,
          "DateofIncident"=>"\/Date(888901200000-0500)\/",
          "DateComplaintFiled"=>"\/Date(894340800000-0400)\/",
          "VIN"=>"WBACC0329WE",
          "Component"=>"VEHICLE SPEED CONTROL",
          "Summary"=>"ON TWO SEPARATE OCCASIONS THE VEHICLE  SUDDENLY ACCELERATED, CAUSING A  COLLISION. THE DEALER HAS BEEN NOTIFIED.   *AK",
          "ProductType"=>"VEHICLE",
          "ModelYear"=>"1998",
          "Make"=>"BMW",
          "Model"=>"318"
        },
        {
          "ODINumber"=>849082,
          "Manufacturer"=>"BMW of North America, LLC",
          "Crash"=>"Yes",
          "Fire"=>"No",
          "NumberOfInjured"=>0,
          "NumberOfDeaths"=>0,
          "DateofIncident"=>"\/Date(938232000000-0400)\/",
          "DateComplaintFiled"=>"\/Date(938577600000-0400)\/",
          "Component"=>"AIR BAGS:FRONTAL | AIR BAGS:FRONTAL | AIR BAGS:FRONTAL",
          "Summary"=>"CONSUMER WAS DRIVING AT 10 MPH. WHILE PULLING FROM A STOP LIGHT ANOTHER VEHICLE HIT THE CONSUMER'S VEHICLE ON THE RIGHT. UPON IMPACT,  DRIVER'S SIDE AND PASSENGER'S SIDE AIR BAGS DIDN'T DEPLOY.  THE VEHICLE WAS STRUCK AT A HIGH RATE OF SPEED.  *AK",
          "ProductType"=>"VEHICLE",
          "ModelYear"=>"1998",
          "Make"=>"BMW",
          "Model"=>"318"
        }
      ]

      assert_equal array_of_complaint_hashes, Nhtsa::Complaints::Complaints.new(1998, "BMW", "318").complaints
    end

  end
end
