require 'test_helper'

class SafetyRatingsTest < Minitest::Test
  def test_that_it_has_the_safety_ratings_end_point
    assert_equal "/SafetyRatings", ::Nhtsa::SafetyRatings::END_POINT
  end
end
