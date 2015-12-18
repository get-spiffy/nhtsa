# NHTSA Child Safety Seat Inspection Station Locator
# http://webapi.nhtsa.gov/Default.aspx?CSSIStations/API/80

module Nhtsa
  module ChildSafetySeatInspectionStationLocator
    require 'json'
    require 'open-uri'

    class GetByZipCode
      def initialize(zip_code, filters = {:spanish => false, :cpsweek => false})
        @zip_code = zip_code
        @filters = filters
      end

      def url
        if @filters[:spanish] && @filters[:cpsweek]
          "http://webapi.nhtsa.gov/api/CSSIStation/zip/#{@zip_code}/lang/spanish/cpsweek?format=json"
        elsif @filters[:spanish]
          "http://webapi.nhtsa.gov/api/CSSIStation/zip/#{@zip_code}/lang/spanish?format=json"
        elsif @filters[:cpsweek]
          "http://webapi.nhtsa.gov/api/CSSIStation/zip/#{@zip_code}/cpsweek?format=json"
        else
          "http://webapi.nhtsa.gov/api/CSSIStation/zip/#{@zip_code}?format=json"
        end
      end

      def inspection_stations
        JSON.parse(open(url).read)["Results"]
      end
    end

    class GetByState
      def initialize(state_abbreviation, filters = {spanish: false, cpsweek: false})
        @state_abbreviation = state_abbreviation
        @filters = filters
      end

      def url
        if @filters[:spanish] && @filters[:cpsweek]
          "http://webapi.nhtsa.gov/api/CSSIStation/state/#{@state_abbreviation}/lang/spanish/cpsweek?format=json"
        elsif @filters[:spanish]
          "http://webapi.nhtsa.gov/api/CSSIStation/state/#{@state_abbreviation}/lang/spanish?format=json"
        elsif @filters[:cpsweek]
          "http://webapi.nhtsa.gov/api/CSSIStation/state/#{@state_abbreviation}/cpsweek?format=json"
        else
          "http://webapi.nhtsa.gov/api/CSSIStation/state/#{@state_abbreviation}?format=json"
        end
      end

      def inspection_stations
        JSON.parse(open(url).read)["Results"]
      end
    end

    class GetByGeoLocation
      def initialize(latitude, longitude, radius)
        @latitude = latitude
        @longitude = longitude
        @radius = radius
      end

      def url
        "http://webapi.nhtsa.gov/api/CSSIStation?lat=#{@latitude}&long=#{@longitude}&miles=#{@radius}&format=json"
      end

      def inspection_stations
        JSON.parse(open(url).read)["Results"]
      end
    end

  end
end
