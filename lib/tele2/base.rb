module Tele2

  class Base

    include HTTParty
    base_uri 'https://restapi3.jasper.com/rws/api/v1/'

    def initialize(usr, key)

      @auth = {:username => usr, :password => key}

      @options = { basic_auth: @auth }

    end

    def devices
      @devices = Tele2::Devices.new(self)
    end

    def get_request(url)
      self.class.get(url, @options)
    end

  end

end


