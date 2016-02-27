require 'test_helper'

class ComplaintsTest < Minitest::Test
  def test_that_it_has_a_valid_end_point
    assert_equal "/Complaints/vehicle", ::Nhtsa::Complaints::END_POINT
  end
end
