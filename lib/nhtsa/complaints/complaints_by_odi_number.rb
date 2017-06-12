module Nhtsa
  module Complaints
    class ComplaintsByOdiNumber
      def initialize(odi_number)
        @odi_number = odi_number
      end

      def url
        "#{BASE_URI}#{END_POINT}/odinumber/#{@odi_number}#{DEFAULT_PARAMS}"
      end

      def complaints_by_odi_number
        JSON.parse(open(url).read)["Results"]
      end
    end
  end
end
