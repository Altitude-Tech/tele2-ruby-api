require 'httparty'
require 'json'

require_relative 'tele2/version'
require_relative 'tele2/base'
require_relative 'tele2/devices'
require_relative 'tele2/messages'
require_relative 'tele2/users'
require_relative 'tele2/echo'
require_relative 'tele2/errors'


#tele2 = Tele2::Devices.new('Frazerbarnes', '9a13a30b-d8d8-4e01-8908-04eefcf1a9e7')
#puts(tele2.find_by_accound_id(231121205, Time.new(2018))['devices'])

client = Tele2::Base.new('Frazerbarnes', '9a13a30b-d8d8-4e01-8908-04eefcf1a9e7')

# devices = client.devices.find_by_account_id(231121205, Time.new(2018))
# puts(devices)

#devices.each do |d|
  #d.account_custom1 = 'CCA119R'
  #d.customer = 'ACCOUNT_ALTITUDE_23320'
  #d.save
#end

# history =  client.devices.get_audit_history(89462036051001589115)
# puts(history)

location_history = client.devices.get_location_history(89462036051001589115)
puts(location_history)

# device = client.devices.get_device(89462036051001589115)
# puts(device)
#
# if device.has_valid_iccid?
#   puts(device.iccid)
# else
#   puts("INVALID!!")
# end

# response = client.messages.get_message('23232')
# puts(response)
# client.users.get_user('53')
