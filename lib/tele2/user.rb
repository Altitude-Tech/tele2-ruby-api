module Tele2

  class Message

    attr_accessor :client

    def initialize(client, user=nil)
      self.client = client

      @user = user
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

    def user_role
      unless @user['userRole'] then request_api_data end
      @user['userRole']
    end

    def status
      unless @user['status'] then request_api_data end
      @user['status']
    end

    def user_locked
      unless @user['userLocked'] then request_api_data end
      @user['userLocked']
    end

    def access_type
      unless @user['accessType'] then request_api_data end
      @user['accessType']
    end

    def first_name
      unless @user['firstName'] then request_api_data end
      @user['firstName']
    end

    def last_name
      unless @user['lastName'] then request_api_data end
      @user['lastName']
    end

    def email
      unless @user['email'] then request_api_data end
      @user['email']
    end

    def phone_number
      unless @user['phone'] then request_api_data end
      @user['phone']
    end

    def language
      unless @user['language'] then request_api_data end
      @user['language']
    end

    def time_zone
      unless @user['timeZone'] then request_api_data end
      @user['timeZone']
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
