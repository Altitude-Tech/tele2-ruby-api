module Tele2

  class Device < Base

    def find_by_last_modified(modified_since)
      @options = { basic_auth: @auth }
      response = self.class.get("/devices?modifiedSince=#{CGI.escape(modified_since.iso8601.to_s)}", @options)
    end

    def find_by_accound_id(account_id, modified_since)
      @options = { basic_auth: @auth }
      response = self.class.get("/devices?accountId=#{account_id.to_s}&modifiedSince=#{CGI.escape(modified_since.iso8601.to_s)}", @options)
      #response.ok? ? Device.new(res) : handle_response(response)
    end

    def find_by_device_id(id)
      @options = { basic_auth: @auth }
      self.class.get("/devices/#{id}", @options)
    end

  end

end
