# NHTSA Civil Penalty Payments
# http://webapi.nhtsa.gov/Default.aspx?CivilPenalties/API/251

module Nhtsa
  module CivilPenalties
    require 'json'
    require 'open-uri'

    class CivilPenalties
      def url
        "http://webapi.nhtsa.gov/api/CivilPenalties?format=json"
      end

      def civil_penalties
        JSON.parse(open(url).read)["Results"]
      end
    end

    class CivilPenaltyByYear
      def initialize(year)
        @year = year
      end

      def url
        "http://webapi.nhtsa.gov/api/CivilPenalties/year/#{@year}?format=json"
      end

      def civil_penalties_by_year
        JSON.parse(open(url).read)["Results"]
      end
    end

  end
end
