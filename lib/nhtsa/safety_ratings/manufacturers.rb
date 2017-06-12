module Nhtsa
  module SafetyRatings
    class Manufacturers
      def initialize(year)
        @year = Year.new(year)
        @manufacturers = JSON.parse(open(url).read)["Results"].collect{|manufacturer| Manufacturer.new(@year, manufacturer["Make"])}
      end

      def url
        "#{BASE_URI}#{END_POINT}/#{@year}#{DEFAULT_PARAMS}"
      end

      def manufacturers
        @manufacturers
      end

      def year
        @year
      end

      def values
        @manufacturers.map(&:name)
      end

      def to_s
        @manufacturers.map(&:to_s)
      end
    end
  end
end
