module Tele2

  class Usage

    attr_accessor :client

    def initialize(client, iccid)
      self.client = client
      @usage = self.client.get_request("/devices/#{iccid.to_s}/ctdUsages")
      @iccid = iccid
      #puts(@usage)
    end

    def usage
      @usage
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

    def request_api_data
      @usage = self.client.get_request("/devices/#{@iccid.to_s}/ctdUsages")
      return true
    end

  end #class

end #module
