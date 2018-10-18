module Tele2

  class EditRecord

    attr_accessor :client

    def initialize(client, record=nil)
      self.client = client

      @record = record
    end

    def save
      # update_params = Hash.new
      # update_params[:accountCustom1] = @device['accountCustom1']
      # update_params[:customer] = @device['customer']
      # update_params[:status] = @device['status']
      #
      # self.client.put_request("/devices/#{@device['iccid']}", update_params)
    end

    def field
      unless @record['field'] then request_api_data end
      @record['field']
    end

    def prior_value
      unless @Crecord['priorValue'] then request_api_data end
      @record['priorValue']
    end

    def value
      unless @record['value'] then request_api_data end
      @record['value']
    end

    def effective_date
      unless @record['effectiveDate'] then request_api_data end
      @record['effectiveDate']
    end

    def status
      unless @record['status'] then request_api_data end
      @record['status']
    end

    def user_name
      unless @record['userName'] then request_api_data end
      @record['userName']
    end

    def delegated_user
      unless @record['delegatedUser'] then request_api_data end
      @record['delegatedUser']
    end

    def ip_address
      unless @record['ipAddress'] then request_api_data end
      @record['ipAddress']
    end

  end #class

end #module
