module Tele2

  class Location

    attr_accessor :client

    def initialize(client, iccid)
      self.client = client
      @location = self.client.get_request("/devices/#{iccid.to_s}/locationHistory")
    end

    def location
      @location
    end

  end

end