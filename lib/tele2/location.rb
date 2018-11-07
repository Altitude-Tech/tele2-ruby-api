module Tele2

  class Location

    attr_accessor :client

    def initialize(client, location=nil)
      self.client = client

      @location = location
    end

    def location
      @location
    end

    def iccid
      unless @location['iccid'] then request_api_data end
      @location['iccid']
    end

    def date_received
      unless @location['dateReceived'] then request_api_data end
      @location['dateReceived']
    end

    def cell_id
      unless @location['cellId'] then request_api_data end
      @location['cellId']
    end

    def cell_lac
      unless @location['cellLac'] then request_api_data end
      @location['cellLac']
    end

    def serving_mcc
      unless @location['servingMcc'] then request_api_data end
      @location['servingMcc']
    end

    def serving_mnc
      unless @location['servingMnc'] then request_api_data end
      @location['servingMnc']
    end

    def latitude
      unless @location['latitude'] then request_api_data end
      @location['latitude']
    end

    def longitude
      unless @location['longitude'] then request_api_data end
      @location['longitude']
    end

    def accuracy
      unless @location['accuracy'] then request_api_data end
      @location['accuracy']
    end

    def city
      unless @location['city'] then request_api_data end
      @location['city']
    end

    def state
      unless @location['state'] then request_api_data end
      @location['state']
    end

    def country
      unless @location['country'] then request_api_data end
      @location['country']
    end

  end #class

end #module
