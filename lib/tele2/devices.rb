require_relative 'device'

module Tele2

  class Devices

    attr_accessor :client

    def initialize(client)
      self.client = client
    end

    def find_by_last_modified(modified_since)
      response = self.client.get_request("/devices?modifiedSince=#{CGI.escape(modified_since.iso8601.to_s)}")
    end

    def find_by_accound_id(account_id, modified_since)
      response = self.client.get_request("/devices?accountId=#{account_id.to_s}&modifiedSince=#{CGI.escape(modified_since.iso8601.to_s)}")

      devices = Array.new
      response['devices'].each do |device|
        devices << Device.new(self.client, device)
      end

      return devices
    end

    def get_device(iccid)
      response = self.client.get_request("/devices/#{iccid.to_s}")
    end

  end

end
