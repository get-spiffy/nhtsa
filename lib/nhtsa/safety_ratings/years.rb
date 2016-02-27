module Nhtsa
  module SafetyRatings
    class Years
      def initialize
        @years = JSON.parse(open(url).read)["Results"].collect{|year| Year.new(year["ModelYear"])}
      end

      def url
        BASE_URI + END_POINT + DEFAULT_PARAMS
      end

      def years
        @years
      end

      def values
        @years.map(&:value)
      end

      def to_s
        @years.map(&:to_s)
      end
    end
  end
end
