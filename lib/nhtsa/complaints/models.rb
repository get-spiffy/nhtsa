module Nhtsa
  module Complaints
    class Models
      def initialize(year, manufacturer)
        @year = year
        @manufacturer = URI::encode(manufacturer)
      end

      def url
        "#{BASE_URI}#{END_POINT}/#{@year}/#{@manufacturer}#{DEFAULT_PARAMS}"
      end

      def models
        JSON.parse(open(url).read)["Results"].collect{|model| model["Model"]}
      end
    end
  end
end
