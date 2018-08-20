module Tele2

  class Base

    include HTTParty
    base_uri 'https://restapi3.jasper.com/rws/api/v1/'

    def initialize(usr, key)
      @auth = {:username => usr, :password => key}

      @username = usr
      @api_key = key
    end

    private

    def auth_params
      { basic_auth: {:username => @username, :password => @password} } if @username && @password
    end

  end

end