require 'test_helper'

class CivilPenaltiesTest < Minitest::Test
  def test_that_it_has_the_civil_penalties_end_point
    assert_equal "/CivilPenalties", ::Nhtsa::CivilPenalties::END_POINT
  end
end
