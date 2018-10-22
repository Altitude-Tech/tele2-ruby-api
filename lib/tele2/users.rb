require_relative 'user'

module Tele2

  class User

    attr_accessor :client

    def initialize(client)
      self.client = client
    end

    def get_user(userId)
      response = self.client.get_request("/users/#{userId}")
      return User.new(self.client, response)
    end

    def get_all_users
      response = self.client.get_request("/users/")

      users = Array.new
      response['users'].each do |user|
        users << User.new(self.client, user)
      end

      return users
    end

    def reset_user_password(userId)
      response = self.client.put_request("/users/#{userId}/resetPassword")
    end

    def delete_user(userId)
      response = self.client.delete_request("/users/#{userId}")
    end

  end #class
end #module
