require 'test_helper'

class YearsTest < Minitest::Test

  def initializes_properly
    refute_nil Nhtsa::Years.new
  end

  def format_defaults_to_json
    assert_equal Nhtsa::Years.new.format == "json"
  end

  def format_can_be_defined
    assert_equal Nhtsa::Years.new.format, "json"
    assert_equal Nhtsa::Years.new("xml").format, "xml"
    assert_equal Nhtsa::Years.new("csv").format, "csv"
    assert_equal Nhtsa::Years.new("jsv").format, "jsv"
  end

  def year_url_respects_format
    assert_equal Nhtsa::Years.new.year_url, "http://webapi.nhtsa.gov/api/SafetyRatings?format=json"
    assert_equal Nhtsa::Years.new.year_url, "http://webapi.nhtsa.gov/api/SafetyRatings?format=xml"
    assert_equal Nhtsa::Years.new.year_url, "http://webapi.nhtsa.gov/api/SafetyRatings?format=csv"
    assert_equal Nhtsa::Years.new.year_url, "http://webapi.nhtsa.gov/api/SafetyRatings?format=jsv"
  end
  
end
