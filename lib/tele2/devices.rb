require_relative 'device'
require_relative 'location'
require_relative 'usage'
require_relative 'session'
require_relative 'audit_record'
require_relative 'zone_usage'
require_relative 'session'

module Tele2

  class Devices

    attr_accessor :client

    def initialize(client)
      self.client = client
    end

    def get_device(iccid)
      response = self.client.get_request("/devices/#{iccid.to_s}")
      #puts(response)
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
      #puts(response)
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
      # puts(response)
      edits = Array.new
      response['deviceAuditTrails'].each do |record|
        edits << AuditRecord.new(self.client, record)
      end

      return edits
    end

    def get_audit_history_days(iccid, days_of_history)
      response = self.client.get_request("/devices/#{iccid.to_s}/auditTrails?daysOfHistory=#{days_of_history}")

      edits = Array.new
      response['deviceAuditTrails'].each do |record|
        edits << AuditRecord.new(self.client, record)
      end

      return edits
    end

    def get_location_history(iccid)
      response = self.client.get_request("/devices/#{iccid.to_s}/locationHistory")
      #puts(response)
      locations = Array.new
      response['simlocations'].each do |location|
        locations << Location.new(self.client, location)
      end

      return locations
    end

    def get_location_from_date(iccid, from_date)
      response = self.client.get_request("/devices/#{iccid.to_s}/locationHistory?fromDate=#{from_date}")

      locations = Array.new
      response['simlocations'].each do |location|
        locations << Location.new(self.client, location)
      end

      return locations
    end

    def get_location_for_time(iccid, from_date, to_date)
      response = self.client.get_request("/devices/#{iccid.to_s}/locationHistory?fromDate=#{from_date}&?toDate=#{to_date}")

      locations = Array.new
      response['simlocations'].each do |location|
        locations << Location.new(self.client, location)
      end

      return locations
    end

    def get_zone_usage(iccid)
      response = self.client.get_request("/devices/#{iccid.to_s}/usageInZone")
      puts(response)
      dates = Hash.new
      dates[:time] = response[:timeStamp]
      dates[:start] = response[:cycleStartDate]
      dates[:end_date] = response[:cycleEndDate]

      zone_usages = Hash.new
      response['deviceCycleUsageInZones'].each do |key, zone_usage|
        zone_usages << ZoneUsage.new(self.client, iccid, key, zone_usage, dates)
      end
      return zone_usages
    end

    def get_zone_usage_by_bill_cycle(iccid, cycle_start_date)
      response = self.client.get_request("/devices/#{iccid.to_s}/usageInZone?cycleStartDate=#{cycle_start_date}")
      return ZoneUsage.new(self.client, response)
    end

    def get_zone_usage_by_rate_plan(iccid, rate_plan)
      response = self.client.get_request("/devices/#{iccid.to_s}/usageInZone?ratePlan=#{rate_plan}")
      return ZoneUsage.new(self.client, response)
    end

    def get_zone_usage_by_zone(iccid, zone)
      response = self.client.get_request("/devices/#{iccid.to_s}/usageInZone?zone=#{zone}")
      return ZoneUsage.new(self.client, response)
    end

  end

end
