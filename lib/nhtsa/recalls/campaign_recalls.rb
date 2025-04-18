module Nhtsa
  module Recalls
    class CampaignRecalls
      def initialize(campaign_number)
        @campaign_number = campaign_number
      end

      def url
        "#{BASE_URI}#{END_POINT}/campaignNumber#{DEFAULT_PARAMS}&campaignNumber=#{@campaign_number}"
      end

      def campaign_recalls
        JSON.parse(open(url).read)["results"]
      end
    end
  end
end
