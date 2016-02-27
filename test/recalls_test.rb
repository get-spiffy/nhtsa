require 'test_helper'

class RecallsTest < Minitest::Test
  def test_that_it_has_the_vehicle_recalls_end_point
    assert_equal "/Recalls/vehicle", ::Nhtsa::Recalls::END_POINT
  end
end
