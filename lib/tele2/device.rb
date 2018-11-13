module Tele2

  class Device

    attr_accessor :client

    def initialize(client, device=nil)
      self.client = client
      @iccid = device['iccid']
      @device = device
    end

    def save(iccid)
      update_params = Hash.new
      update_params[:customer] = @device['customer']
      update_params[:status] = @device['status']
      update_params[:ratePlan] = @device['ratePlan']
      update_params[:communicationPlan] = @device['communicationPlan']
      update_params[:deviceID] = @device['deviceID']
      update_params[:modemID] = @device['modemID']
      update_params[:overageLimitOverride] = @device['overageLimitOverride']
      update_params[:accountCustom1] = @device['accountCustom1']
      update_params[:accountCustom2] = @device['accountCustom2']
      update_params[:accountCustom3] = @device['accountCustom3']
      update_params[:accountCustom4] = @device['accountCustom4']
      update_params[:accountCustom5] = @device['accountCustom5']
      update_params[:accountCustom6] = @device['accountCustom6']
      update_params[:accountCustom7] = @device['accountCustom7']
      update_params[:accountCustom8] = @device['accountCustom8']
      update_params[:accountCustom9] = @device['accountCustom9']
      update_params[:accountCustom10] = @device['accountCustom10']
      update_params[:simNotes] = @device['simNotes']

      response = self.client.put_request("/devices/#{@device['iccid']}", update_params)
    end

    def location
      response = Devices.get_location_history(@device[iccid])
      Tele2::Location.new(self.client, response['simlocations'].first)
    end

    def usage
      Tele2::Usage.new(self.client, iccid)
    end

    def session
      Tele2::Session.new(self.client, iccid)
    end

    def iccid
      unless @device['iccid'] then request_api_data end
      @device['iccid']
    end

    def has_valid_iccid?
      @device['iccid'] != nil
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

    def status=(str)
      @device['status'] = str
    end

    def rate_plan
      unless @device['ratePlan'] then request_api_data end
      @device['ratePlan']
    end

    def rate_plan=(str)
      @device['ratePlan'] = str
    end

    def communication_plan
      unless @device['communicationPlan'] then request_api_data end
      @device['communicationPlan']
    end

    def communication_plan=(str)
      @device['communicationPlan'] = str
    end

    def customer
      unless @device['customer'] then request_api_data end
      @device['customer']
    end

    def customer=(str)
      @device['customer'] = str
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
      fixed_ip_address != nil
    end

    def euiccid
      unless @device['euiccid'] then request_api_data end
      @device['euiccid']
    end

    def device_id
      unless @device['deviceID'] then request_api_data end
      @device['deviceID']
    end

    def device_id=(str)
      @device['deviceID'] = str
    end

    def modem_id
      unless @device['modemID'] then request_api_data end
      @device['modemID']
    end

    def modem_id=(str)
      @device['modemID'] = str
    end

    def has_modem_id?
      modem_id != nil
    end

    def sim_notes
      unless @device['simNotes'] then request_api_data end
      @device['simNotes']
    end

    def sim_notes=(str)
      @device['simNotes'] = str
    end

    def global_sim_type
      unless @device['globalSimType'] then request_api_data end
      @device['globalSimType']
    end

    def account_id
      unless @device['accountId'] then request_api_data end
      @device['accountId']
    end

    def overage_limit_override
      unless @device['overageLimitOverride'] then request_api_data end
      @device['overageLimitOverride']
    end

    def overage_limit_override=(str)
      @device['overageLimitOverride'] = str
    end

    def account_custom_1
      unless @device['accountCustom1'] then request_api_data end
      @device['accountCustom1']
    end

    def account_custom_1=(str)
      @device['accountCustom1'] = str
    end

    def account_custom_2
      unless @device['accountCustom2'] then request_api_data end
      @device['accountCustom2']
    end

    def account_custom_2=(str)
      @device['accountCustom2'] = str
    end

    def account_custom_3
      unless @device['accountCustom3'] then request_api_data end
      @device['accountCustom3']
    end

    def account_custom_3=(str)
      @device['accountCustom3'] = str
    end

    def account_custom_4
      unless @device['accountCustom4'] then request_api_data end
      @device['accountCustom4']
    end

    def account_custom_4=(str)
      @device['accountCustom4'] = str
    end

    def account_custom_5
      unless @device['accountCustom5'] then request_api_data end
      @device['accountCustom5']
    end

    def account_custom_5=(str)
      @device['accountCustom5'] = str
    end

    def account_custom_6
      unless @device['accountCustom6'] then request_api_data end
      @device['accountCustom6']
    end

    def account_custom_6=(str)
      @device['accountCustom6'] = str
    end

    def account_custom_7
      unless @device['accountCustom7'] then request_api_data end
      @device['accountCustom7']
    end

    def account_custom_7=(str)
      @device['accountCustom7'] = str
    end

    def account_custom_8
      unless @device['accountCustom8'] then request_api_data end
      @device['accountCustom8']
    end

    def account_custom_8=(str)
      @device['accountCustom8'] = str
    end

    def account_custom_9
      unless @device['accountCustom9'] then request_api_data end
      @device['accountCustom9']
    end

    def account_custom_9=(str)
      @device['accountCustom9'] = str
    end

    def account_custom_10
      unless @device['accountCustom10'] then request_api_data end
      @device['accountCustom10']
    end

    def account_custom_10=(str)
      @device['accountCustom10'] = str
    end

    def request_api_data
      @device = self.client.get_request("/devices/#{@iccid.to_s}")
      return true
    end

  end

end
