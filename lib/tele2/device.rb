module Tele2

  class Device

    attr_accessor :client

    def initialize(client, device)
      self.client = client
      @device = device
    end

    def iccid
      unless @device['iccid'] then request_api_data end
      @device['iccid']
    end

    def imsi
      unless @device['imsi'] then request_api_data end
      @device['imsi']
    end

    def imei
      unless @device['imei'] then request_api_data end
      @device['imei']
    end

    def status
      unless @device['status'] then request_api_data end
      @device['status']
    end

    def rate_plan
      unless @device['ratePlan'] then request_api_data end
      @device['ratePlan']
    end

    def communication_plan
      unless @device['communicationPlan'] then request_api_data end
      @device['communicationPlan']
    end

    def customer
      unless @device['customer'] then request_api_data end
      @device['customer']
    end

    def end_customer_id
      unless @device['endConsumerId'] then request_api_data end
      @device['endConsumerId']
    end

    def date_activated
      unless @device['dateActivated'] then request_api_data end
      @device['dateActivated']
    end

    def date_added
      unless @device['dateAdded'] then request_api_data end
      @device['dateAdded']
    end

    def date_updated
      unless @device['dateUpdated'] then request_api_data end
      @device['dateUpdated']
    end

    def date_shipped
      unless @device['dateShipped'] then request_api_data end
      @device['dateShipped']
    end

    def fixed_ip_address
      unless @device['fixedIPAddress'] then request_api_data end
      @device['fixedIPAddress']
    end

    def has_fixed_ip_address?
      fixed_ip_address == 'null'
    end

    def euiccid
      unless @device['euiccid'] then request_api_data end
      @device['euiccid']
    end

    def device_id
      unless @device['deviceID'] then request_api_data end
      @device['deviceID']
    end

    def modem_id
      unless @device['modemID'] then request_api_data end
      @device['modemID']
    end

    def has_modem_id?
      modem_id == 'null'
    end

    def global_sim_type
      unless @device['globalSimType'] then request_api_data end
      @device['globalSimType']
    end

    def account_id
      unless @device['accountId'] then request_api_data end
      @device['accountId']
    end

    def request_api_data
      @device = self.client.get_request("/devices/#{iccid.to_s}")
      return true
    end

  end

end

