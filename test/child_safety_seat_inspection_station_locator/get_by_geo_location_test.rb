require 'test_helper'

module ChildSafetySeatInspectionStationLocator
  class GetByGeoLocationTest < Minitest::Test
    def test_it_builds_url_as_expected
      expected_url = "http://webapi.nhtsa.gov/api/CSSIStation?lat=0.0000&long=0.0000&miles=10&format=json"

      assert_equal expected_url, Nhtsa::ChildSafetySeatInspectionStationLocator::GetByGeoLocation.new("0.0000", "0.0000", 10).url
    end

    def test_inspection_stations_returns_an_array_of_location_hashes
      expected_location_hashes = [
        {
          "ContactFirstName"=>"Flora Williams",
          "Organization"=>"Texas AgriLife Extension Service Grimes County Fitting Station",
          "AddressLine1"=>"208 South Judson Street",
          "City"=>"Navasota",
          "State"=>"TX",
          "Zip"=>"77868",
          "Phone1"=>"936-873-3907",
          "CPSWeekEventFlag"=>"No",
          "LastUpdatedDate"=>"\/Date(1297366127000-0500)\/",
          "MobileStationFlag"=>"No",
          "CountiesServed"=>"Grimes",
          "OperationHours"=>"By Appointment Only",
          "LocationLatitude"=>30.394,
          "LocationLongitude"=>-96.0779
        },
        {
          "ContactFirstName"=>"Officer Kristi Hosea or Officer Dee Donovan ",
          "Organization"=>"Texas A&M Police Department ",
          "AddressLine1"=>"1111 Research Parkway",
          "City"=>"College Station  ",
          "State"=>"TX",
          "Zip"=>"77843",
          "Phone1"=>"979-845-5281",
          "CPSWeekEventFlag"=>"No",
          "LastUpdatedDate"=>"\/Date(1297370475000-0500)\/",
          "MobileStationFlag"=>"No",
          "CountiesServed"=>"Brazos",
          "OperationHours"=>"By Appointment Only",
          "LocationLatitude"=>30.6037,
          "LocationLongitude"=>-96.358
        },
        {
          "ContactFirstName"=>"Sally Garrett and Jennifer Boening",
          "Organization"=>"Texas AgriLife Extension Service Fayette County Fitting Station",
          "AddressLine1"=>"254 North Jefferson Street",
          "City"=>"La Grange  ",
          "State"=>"TX",
          "Zip"=>"78945-2213",
          "Phone1"=>"(979) 968-5831",
          "CPSWeekEventFlag"=>"No",
          "LastUpdatedDate"=>"\/Date(1297370984000-0500)\/",
          "MobileStationFlag"=>"No",
          "CountiesServed"=>"Fayette",
          "OperationHours"=>"By Appointment Only",
          "LocationLatitude"=>29.9073,
          "LocationLongitude"=>-96.8774
        },
        {
          "ContactFirstName"=>"Robyn",
          "ContactLastName"=>"Neveu",
          "Organization"=>"TXDOT - Bryan",
          "AddressLine1"=>"2591 N Earl Rudder Fwy",
          "City"=>"Bryan",
          "State"=>"TX",
          "Zip"=>"77803",
          "Email"=>"Robyn.Neveu@txdot.gov",
          "Phone1"=>"9797789776",
          "CPSWeekEventFlag"=>"No",
          "LastUpdatedDate"=>"\/Date(1401902988000-0400)\/",
          "MobileStationFlag"=>"No",
          "Note"=>"Counties-Leon, Brazos, Robertson, Grimes, Freestone, Walker, Washington, Burleson, Madison, Milam",
          "OperationHours"=>"Odd Friday's each month 1-4 PM",
          "LocationLatitude"=>30.72,
          "LocationLongitude"=>-96.4004
        }
      ]

      assert_equal expected_location_hashes, Nhtsa::ChildSafetySeatInspectionStationLocator::GetByGeoLocation.new(30.1783, -96.3911, 50).inspection_stations
    end
  end
end
