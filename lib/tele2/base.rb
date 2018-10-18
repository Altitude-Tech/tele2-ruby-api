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

    def messages
      @messages = Tele2::Messages.new(self)
    end

    def users
      @users = Tele2::Users.new(self)
    end

    def get_request(url)
      #@options.marge(params)
      self.class.get(url, @options)
    end

    def put_request(url, params)
      params = { :body => params.to_json, :headers => { "Content-Type" => 'application/json'} }

      @options = @options.merge(params)
      puts(@options)

      puts(self.class.put(url, @options))
    end

  end #class

end #module
