module Tele2

  class Usage

    attr_accessor :client

    def initialize(client, iccid)
      self.client = client
      @usage = self.client.get_request("/devices/#{iccid.to_s}/ctdUsages")
    end

    def usage
      @usage
    end

  end

end