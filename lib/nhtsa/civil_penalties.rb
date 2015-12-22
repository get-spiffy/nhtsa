# NHTSA Civil Penalty Payments
# http://webapi.nhtsa.gov/Default.aspx?CivilPenalties/API/251

module Nhtsa
  module CivilPenalties

    END_POINT = "/CivilPenalties"

    class CivilPenalties
      def url
        BASE_URI + END_POINT + DEFAULT_PARAMS
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
        BASE_URI + END_POINT + "/#{@year}" + DEFAULT_PARAMS
      end

      def civil_penalties_by_year
        JSON.parse(open(url).read)["Results"]
      end
    end

  end
end
