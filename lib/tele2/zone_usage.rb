module Tele2

  class ZoneUsage

    attr_accessor :client

    def initialize(client, iccid, key, uzone, dates)
      self.client = client
      @dates = dates
      @iccid = iccid
      @key = key
      @uzone = uzone
    end

    def iccid
      @iccid
    end

    def timestamp
      @dates['time']
    end

    def cycle_start_date
      @dates['start']
    end

    def cycle_end_date
      @dates['end_date']
    end

    def rate_plan
      unless @uzone['ratePlan'] then request_api_data end
      @uzone['ratePlan']
    end

    def zone
      unless @uzone['zone'] then request_api_data end
      @uzone['zone']
    end

    def rate_plan_version
      unless @uzone['ratePlanVersion'] then request_api_data end
      @uzone['ratePlanVersion']
    end

    def data_usage
      unless @uzone['dataUsage'] then request_api_data end
      @uzone['DataUsage']
    end

    def data_usage_unit
      unless @uzone['dataUsageUnit'] then request_api_data end
      @uzone['dataUsageUnit']
    end

    def sms_mo_usage
      unless @uzone['SMSMOUsage'] then request_api_data end
      @uzone['SMSMOUsage']
    end

    def sms_mt_usage
      unless @uzone['SMSMTUsage'] then request_api_data end
      @uzone['SMSMTUsage']
    end

    def voice_mo_usage
      unless @uzone['voiceMOUsage'] then request_api_data end
      @uzone['voiceMOUsage']
    end

    def voice_mo_usage_unit
      unless @uzone['voiceMOUsageUnit'] then request_api_data end
      @uzone['voiceMOUsageUnit']
    end

    def voice_mt_usage
      unless @uzone['voiceMTUsage'] then request_api_data end
      @uzone['voiceMTUsage']
    end

    def voice_mt_usage_unit
      unless @uzone['voiceMTUsageUnit'] then request_api_data end
      @uzone['voiceMTUsageUnit']
    end

    def request_api_data
      response = self.client.get_request("/devices/#{iccid.to_s}/usageInZone")
      @uzone = response['deviceCycleUsageInZones']['@key']
      return true
    end

  end

end
