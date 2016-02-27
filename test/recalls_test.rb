require 'test_helper'

class RecallsTest < Minitest::Test
  def test_that_it_has_a_valid_end_point
    assert_equal "/Recalls/vehicle", ::Nhtsa::Recalls::END_POINT
  end
end
