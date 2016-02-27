require 'test_helper'

class ChildSafetySeatInspectionStationLocatorTest < Minitest::Test
  def test_that_it_has_a_valid_end_point
    assert_equal "/CSSIStation", ::Nhtsa::ChildSafetySeatInspectionStationLocator::END_POINT
  end

  def test_it_has_the_cps_week_flag
    assert_equal "/cpsweek", ::Nhtsa::ChildSafetySeatInspectionStationLocator::CPS_WEEK
  end

  def test_it_has_the_spanish_language_flag
    assert_equal "/lang/spanish", ::Nhtsa::ChildSafetySeatInspectionStationLocator::SPANISH
  end
end
