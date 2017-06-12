module Nhtsa
  module CivilPenalties
    class CivilPenalties
      def url
        "#{BASE_URI}#{END_POINT}#{DEFAULT_PARAMS}"
      end

      def civil_penalties
        JSON.parse(open(url).read)["Results"]
      end
    end
  end
end
