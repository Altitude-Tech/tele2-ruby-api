require_relative 'message'

module Tele2

  class Messages

    attr_accessor :client

    def initialize(client)
      self.client = client
    end

    def get_message(smsId)
      response = self.client.get_request("/smsMessages/#{smsId.to_s}")
      return Message.new(self.client, response)
    end

  end

end
