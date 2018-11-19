module Tele2

  class Session

    attr_accessor :client

    def initialize(client, iccid)
      self.client = client
      @session = self.client.get_request("/devices/#{iccid.to_s}/sessionInfo")
      @iccid = iccid
      #puts(@session)
    end

    def session
      @session
    end

    def ip_address
      @session['ipAddress']
    end

    def ipv6_address
      @session['ipv6Address']
    end

    def has_ip_address?
      ip_address != nil
    end

    def start_date
      @session['dateSessionStarted']
    end

    def end_date
      @session['dateSessionEnded']
    end

    def request_api_data
      @session = self.client.get_request("/devices/#{@iccid.to_s}/sessionInfo")
      return true
    end

  end

end
