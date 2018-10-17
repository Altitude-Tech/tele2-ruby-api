require_relative 'device'
require_relative 'location'
require_relative 'usage'
require_relative 'session'
require_relative 'change_record'

module Tele2

  class Devices

    attr_accessor :client

    def initialize(client)
      self.client = client
    end

    def get_device(iccid)
      response = self.client.get_request("/devices/#{iccid.to_s}")
      return Device.new(self.client, response)
    end

    def find_by_last_modified(modified_since)
      response = self.client.get_request("/devices?modifiedSince=#{CGI.escape(modified_since.iso8601.to_s)}")

      devices = Array.new
      response['devices'].each do |device|
        devices << Device.new(self.client, device)
      end

      return devices
    end

    def find_by_account_id(account_id, modified_since)
      response = self.client.get_request("/devices?accountId=#{account_id.to_s}&modifiedSince=#{CGI.escape(modified_since.iso8601.to_s)}")

      devices = Array.new
      response['devices'].each do |device|
        devices << Device.new(self.client, device)
      end

      return devices
    end

    def find_by_status(status, modified_since)
      response = self.client.get_request("/devices?status=#{status}&modifiedSince=#{CGI.escape(modified_since.iso8601.to_s)}")

      devices = Array.new
      response['devices'].each do |device|
        devices << Device.new(self.client, device)
      end

      return devices
    end

    def get_audit_history(iccid)
      response = self.client.get_request("/devices/#{iccid.to_s}/auditTrails")

      changes = Array.new
      response['deviceAuditTrails'].each do |record|
        changes << ChangeRecord.new(self.client, record)
      end

      return changes
    end

    def get_location_history(iccid)
      response = self.client.get_request("/devices/#{iccid.to_s}/locationHistory")

      locations = Array.new
      response['simlocations'].each do |location|
        locations << Location.new(self.client, location)
      end

      return locations
    end

  end #class

end #module
