require 'test_helper'

class ComplaintsTest < Minitest::Test
  def test_that_it_has_the_vehicle_complaints_end_point
    assert_equal "/Complaints/vehicle", ::Nhtsa::Complaints::END_POINT
  end
end
