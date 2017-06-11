require 'test_helper'

class NhtsaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Nhtsa::VERSION
  end

  def test_that_it_has_the_correct_base_uri
    assert_equal "https://webapi.nhtsa.gov/api", Nhtsa::BASE_URI
  end

  def test_that_it_has_json_as_the_default_params
    assert_equal "?format=json", Nhtsa::DEFAULT_PARAMS
  end
end
