module Tele2

  class Usage

    attr_accessor :client

    def initialize(client, iccid)
      self.client = client
      @usage = self.client.get_request("/devices/#{iccid.to_s}/ctdUsages")
    end

    def iccid
      unless @usage['iccid'] then request_api_data end
      @usage['iccid']
    end

    def imsi
      unless @usage['imsi'] then request_api_data end
      @usage['imsi']
    end

    def msisdn
      unless @usage['msisdn'] then request_api_data end
      @usage['msisdn']
    end

    def imei
      unless @usage['imei'] then request_api_data end
      @usage['imei']
    end

    def status
      unless @usage['status'] then request_api_data end
      @usage['status']
    end

    def rate_plan
      unless @usage['ratePlan'] then request_api_data end
      @usage['ratePlan']
    end

    def communication_plan
      unless @usage['communicationPlan'] then request_api_data end
      @usage['communicationPlan']
    end

    def ctd_data_usage
      unless @usage['ctdDataUsage'] then request_api_data end
      @usage['ctdDataUsage']
    end

    def ctd_sms_usage
      unless @usage['ctdSMSUsage'] then request_api_data end
      @usage['ctdSMSUsage']
    end

    def ctd_voice_usage
      unless @usage['ctdVoiceUsage'] then request_api_data end
      @usage['ctdVoiceUsage']
    end

    def ctd_session_count
      unless @usage['ctdSessionCount'] then request_api_data end
      @usage['ctdSessionCount']
    end

    def overage_limit_reached
      unless @usage['overageLimitReached'] then request_api_data end
      @usage['overageLimitReached']
    end

    def overage_limit_override
      unless @usage['overageLimitOverride'] then request_api_data end
      @usage['overageLimitOverride']
    end

  end #class

end #module
