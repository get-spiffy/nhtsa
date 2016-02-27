require 'test_helper'

class ChildSafetySeatInspectionStationLocatorTest < Minitest::Test
  def test_that_it_has_the_child_safety_seat_inspection_station_locator_end_point
    assert_equal "/CSSIStation", ::Nhtsa::ChildSafetySeatInspectionStationLocator::END_POINT
  end

  def test_it_has_the_cps_week_flag_defined
    assert_equal "/cpsweek", ::Nhtsa::ChildSafetySeatInspectionStationLocator::CPS_WEEK
  end

  def test_it_has_the_spanish_language_flag_defined
    assert_equal "/lang/spanish", ::Nhtsa::ChildSafetySeatInspectionStationLocator::SPANISH
  end
end
