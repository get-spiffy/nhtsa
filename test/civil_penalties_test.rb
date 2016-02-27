require 'test_helper'

class CivilPenaltiesTest < Minitest::Test
  def test_that_it_has_a_valid_end_point
    assert_equal "/CivilPenalty", ::Nhtsa::CivilPenalties::END_POINT
  end
end
