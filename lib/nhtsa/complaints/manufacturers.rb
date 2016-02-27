module Nhtsa
  module Complaints
    class Manufacturers
      def initialize(year)
        @year = year
      end

      def url
        BASE_URI + END_POINT + "/#{@year}" + DEFAULT_PARAMS
      end

      def manufacturers
        JSON.parse(open(url).read)["Results"].collect{|manufacturer| manufacturer["Make"]}
      end
    end
  end
end
