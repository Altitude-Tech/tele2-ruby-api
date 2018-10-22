module Tele2

  class User

    attr_accessor :client

    def initialize(client, user=nil)
      self.client = client

      @user = user
    end

    def save(iccid)
      update_params = Hash.new
      update_params[:roleName] = @user['roleName']
      update_params[:accessType] = @user['accessType']
      update_params[:userLocked] = @user['userLocked']
      update_params[:liveUpdateEnabled] = @user['liveUpdateEnabled']
      update_params[:firstName] = @user['firstName']
      update_params[:lastName] = @user['lastName']
      update_params[:email] = @user['email']
      update_params[:phone] = @user['phone']
      update_params[:language] = @user['language']
      update_params[:timeZone] = @user['timeZone']

      self.client.put_request("/users/#{@user['userId']}", update_params)
    end

    def user_name
      unless @user['username'] then request_api_data end
      @user['username']
    end

    def user_id
      unless @user['userId'] then request_api_data end
      @user['userId']
    end

    def account_name
      unless @user['accountName'] then request_api_data end
      @user['accountName']
    end

    def account_id
      unless @user['accountId'] then request_api_data end
      @user['accountId']
    end

    def role_name
      unless @user['roleName'] then request_api_data end
      @user['roleName']
    end

    def role_name=(str)
      @user['roleName'] = str
    end

    def status
      unless @user['status'] then request_api_data end
      @user['status']
    end

    def user_locked
      unless @user['userLocked'] then request_api_data end
      @user['userLocked']
    end

    def user_locked=(str)
      @user['userLocked'] = str
    end

    def access_type
      unless @user['accessType'] then request_api_data end
      @user['accessType']
    end

    def access_type=(str)
      @user['accessType'] = str
    end

    def first_name
      unless @user['firstName'] then request_api_data end
      @user['firstName']
    end

    def first_name=(str)
      @user['firstName'] = str
    end

    def last_name
      unless @user['lastName'] then request_api_data end
      @user['lastName']
    end

    def last_name=(str)
      @user['lastName'] = str
    end

    def email
      unless @user['email'] then request_api_data end
      @user['email']
    end

    def email=(str)
      @user['email'] = str
    end

    def phone
      unless @user['phone'] then request_api_data end
      @user['phone']
    end

    def phone=(str)
      @user['phone'] = str
    end

    def language
      unless @user['language'] then request_api_data end
      @user['language']
    end

    def language=(str)
      @user['language'] = str
    end

    def time_zone
      unless @user['timeZone'] then request_api_data end
      @user['timeZone']
    end

    def time_zone=(str)
      @user['timeZone'] = str
    end

    def customer_name
      unless @user['customerName'] then request_api_data end
      @user['customerName']
    end

    def customer_id
      unless @user['customerId'] then request_api_data end
      @user['customerId']
    end

    def customer_group
      unless @user['customerGroup'] then request_api_data end
      @user['customerGroup']
    end

    def account_group
      unless @user['accountGroup'] then request_api_data end
      @user['accountGroup']
    end

    def last_login
      unless @user['lastLogin'] then request_api_data end
      @user['lastLogin']
    end

    def last_password_reset
      unless @user['lastPassworResetDate'] then request_api_data end
      @user['lastPassworResetDate']
    end

    def password_expiration_days
      unless @user['passwordExpirationDays'] then request_api_data end
      @user['passwordExpirationDays']
    end

    def live_update_enabled
      unless @user['liveUpdateEnabled'] then request_api_data end
      @user['liveUpdateEnabled']
    end

    def live_update_enabled=(str)
      @user['liveUpdateEnabled'] = str
    end

    def date_added
      unless @user['dateAdded'] then request_api_data end
      @user['dateAdded']
    end

    def date_modified
      unless @user['dateModified'] then request_api_data end
      @user['dateModified']
    end

  end #class

end #module
