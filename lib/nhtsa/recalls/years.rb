
module Nhtsa
  module Recalls
    class Years
      def url
        "#{BASE_URI}#{END_POINT}#{DEFAULT_PARAMS}"
      end

      def years
        JSON.parse(open(url).read)["Results"].collect{|year| year["ModelYear"]}
      end
    end
  end
end
