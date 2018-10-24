module Tele2

  class Echo

    attr_accessor :client

    def initialize(client)
      self.client = client
    end

    def echo(param)
      response = self.client.get_request("/echo/#{param}")
      return response
    end

  end #class
end #module
