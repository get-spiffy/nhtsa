module Nhtsa
  module CivilPenalties
    class CivilPenaltiesByYear
      def initialize(year)
        @year = year
      end

      def url
        "#{BASE_URI}#{END_POINT}/#{@year}#{DEFAULT_PARAMS}"
      end

      def civil_penalties_by_year
        JSON.parse(open(url).read)["Results"]
      end
    end
  end
end
