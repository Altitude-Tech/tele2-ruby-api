require_relative 'message'

module Tele2

  class Messages

    attr_accessor :client

    def initialize(client)
      self.client = client
    end

    def get_message(smsMsgId)
      response = self.client.get_request("/smsMessages/#{smsMsgId.to_s}")
      return Message.new(self.client, response)
    end

    # def send_messages(iccid, message)
    #   response = self.client.get_request("/devices/#{iccid.to_s}/smsMessages")
    # end

    def get_from_date(acount_id, from_date)
      response = self.client.get_request("/smsMessages?acountId=#{account_id}&fromDate=#{CGI.escape(from_date.iso8601.to_s)}")

      messages = Array.new
      response['smsMsgIds'].each do |message|
        messages << get_message(message)
      end

      return messages
    end

    def get_message_for_device(acount_id, from_date, iccid)
      response = self.client.get_request("/smsMessages?acountId=#{account_id}&fromDate=#{CGI.escape(from_date.iso8601.to_s)}&iccid=#{iccid}")
    end

    def get_from_time_period(account_id, from_date, to_date)
      response = self.client.get_request("/smsMessages?acountId=#{account_id}&fromDate=#{CGI.escape(from_date.iso8601.to_s)}&toDate=#{CGI.escape(to_date.iso8601.to_s)}")

      messages = Array.new
      response['smsMsgIds'].each do |message|
        messages << get_message(message)
      end

      return messages
    end

  end #class
end #module
