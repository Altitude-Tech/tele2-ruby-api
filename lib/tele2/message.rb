module Tele2

  class Message

    attr_accessor :client

    def initialize(client, message=nil)
      self.client = client

      @message = message
    end

    def save
      # update_params = Hash.new
      # update_params[:accountCustom1] = @device['accountCustom1']
      # update_params[:customer] = @device['customer']
      # update_params[:status] = @device['status']
      #
      # self.client.put_request("/devices/#{@device['iccid']}", update_params)
    end

    def sms_id
      unless @message['smsMsgId'] then request_api_data end
      @message['smsMsgId']
    end

    def status
      unless @message['status'] then request_api_data end
      @message['status']
    end

    def message_text
      unless @message['messageText'] then request_api_data end
      @message['messageText']
    end

    def sender_login
      unless @message['senderLogin'] then request_api_data end
      @message['senderLogin']
    end

    def sent_to
      unless @message['sentTo'] then request_api_data end
      @message['sentTo']
    end

    def sent_from
      unless @message['sentFrom'] then request_api_data end
      @message['sentFrom']
    end

    def msg_type
      unless @message['msgType'] then request_api_data end
      @message['msgType']
    end

    def date_sent
      unless @message['dateSent'] then request_api_data end
      @message['dateSent']
    end

    def date_received
      unless @message['dateReceived'] then request_api_data end
      @message['dateReceived']
    end

    def date_modified
      unless @message['dateModified'] then request_api_data end
      @message['dateModified']
    end

  end #class

end #module
