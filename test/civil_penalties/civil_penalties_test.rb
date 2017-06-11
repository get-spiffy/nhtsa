require 'test_helper'

module CivilPenalties
  class CivilPenaltiesTest < Minitest::Test

    def test_it_builds_url_as_expected
      expected_url = "https://webapi.nhtsa.gov/api/CivilPenalties?format=json"

      assert_equal expected_url, Nhtsa::CivilPenalties::CivilPenalties.new.url
    end

    def test_years_returns_an_array_of_civil_penalty_hashes
      civil_penalty_hashes = [
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
          "AgreementDate"=>"\/Date(1285905600000-0400)\/",
          "PenaltyReceivedDate"=>"\/Date(1286251200000-0400)\/",
          "Company"=>"Malloy Electric",
          "FileNo"=>"CARS10-011",
          "Subject"=>"Multiple CARS transactions by a single purchaser",
          "Amount"=>6500,
          "FiscalYear"=>2011
        },
        {
          "AgreementDate"=>"\/Date(930888000000-0400)\/",
          "PenaltyReceivedDate"=>"\/Date(931924800000-0400)\/",
          "Company"=>"Selig Ford",
          "FileNo"=>"1567980804",
          "Subject"=>"Sale of noncompliant 15 passenger vans (schoolbus) 49 USC 30112(a)",
          "Amount"=>1000,
          "FiscalYear"=>1999
        }
      ]

      assert_equal civil_penalty_hashes, Nhtsa::CivilPenalties::CivilPenalties.new.civil_penalties
    end

  end
end
