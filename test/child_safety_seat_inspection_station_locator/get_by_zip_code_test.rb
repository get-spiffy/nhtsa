require 'test_helper'

module ChildSafetySeatInspectionStationLocator
  class GetByZipCodeTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "https://webapi.nhtsa.gov/api/CSSIStation/zip/12345?format=json"

      assert_equal expected_url, Nhtsa::ChildSafetySeatInspectionStationLocator::GetByZipCode.new(12345).url
    end

    def test_it_adds_the_spanish_filter_to_url_when_specified
      expected_url = "https://webapi.nhtsa.gov/api/CSSIStation/zip/12345/lang/spanish?format=json"

      assert_equal expected_url, Nhtsa::ChildSafetySeatInspectionStationLocator::GetByZipCode.new(12345, {spanish: true}).url
    end

    def test_it_adds_the_cpsweek_filter_to_url_when_specified
      expected_url = "https://webapi.nhtsa.gov/api/CSSIStation/zip/12345/cpsweek?format=json"

      assert_equal expected_url, Nhtsa::ChildSafetySeatInspectionStationLocator::GetByZipCode.new(12345, {cpsweek: true}).url
    end

    def test_it_adds_the_spanish_and_cpsweek_filters_to_url_when_specified
      expected_url = "https://webapi.nhtsa.gov/api/CSSIStation/zip/12345/cpsweek/lang/spanish?format=json"

      assert_equal expected_url, Nhtsa::ChildSafetySeatInspectionStationLocator::GetByZipCode.new(12345, {spanish: true, cpsweek: true}).url
    end

    def test_inspection_stations_returns_an_array_of_location_hashes
      expected_location_hashes = [
        {
          "ContactFirstName"=>"TJ",
          "ContactLastName"=>"Isgrig",
          "Organization"=>"St. Francois County Ambulance District",
          "AddressLine1"=>"820 Electric St",
          "City"=>"Farmington",
          "State"=>"MO",
          "Zip"=>"63640",
          "Email"=>"pounds@sfcad.org",
          "Fax"=>"573-431-0714",
          "Phone1"=>"573-431-0030",
          "CPSWeekEventFlag"=>"No",
          "LastUpdatedDate"=>"\/Date(1383163962000-0400)\/",
          "MobileStationFlag"=>"No",
          "CountiesServed"=>"St. Francois and surrounding area",
          "LocationLatitude"=>37.7995,
          "LocationLongitude"=>-90.4373
        }
      ]

      assert_equal expected_location_hashes, Nhtsa::ChildSafetySeatInspectionStationLocator::GetByZipCode.new(63640).inspection_stations
    end

  end
end
