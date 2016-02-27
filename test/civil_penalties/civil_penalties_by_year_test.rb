require 'test_helper'

module CivilPenalties
  class CivilPenaltiesByYearTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "http://webapi.nhtsa.gov/api/CivilPenalties/2012?format=json"

      assert_equal expected_url, Nhtsa::CivilPenalties::CivilPenaltiesByYear.new(2012).url
    end

    def test_years_returns_an_array_of_years
      years = [
        {
          "AgreementDate"=>"\/Date(1341288000000-0400)\/",
          "PenaltyReceivedDate"=>"\/Date(1343275200000-0400)\/",
          "Company"=>"Volvo",
          "FileNo"=>"TQ10-007",
          "Subject"=>"Untimely recalls in 2010 and 2012.49 USC 30118(c) and 30119(c), 49 CFR 573.6",
          "Amount"=>1500000,
          "FiscalYear"=>2012
        },
        {
          "AgreementDate"=>"\/Date(1328850000000-0500)\/",
          "PenaltyReceivedDate"=>"\/Date(1328850000000-0500)\/",
          "Company"=>"BMW",
          "FileNo"=>"TQ10-006",
          "Subject"=>"Untimely recalls in 2010.49 USC 30118(c) and 30119(c), 49 CFR 573.6",
          "Amount"=>3000000,
          "FiscalYear"=>2012
        }
      ]

      assert_equal years, Nhtsa::CivilPenalties::CivilPenaltiesByYear.new(2012).civil_penalties_by_year
    end

  end
end
