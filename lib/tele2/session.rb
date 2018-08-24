module Tele2

  class Session

    attr_accessor :client

    def initialize(client, iccid)
      self.client = client
      @session = self.client.get_request("/devices/#{iccid.to_s}/sessionInfo")
    end

    def session
      @session
    end

  end

end