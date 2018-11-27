require 'httparty'
require 'json'

require_relative 'tele2/version'
require_relative 'tele2/base'
require_relative 'tele2/devices'
require_relative 'tele2/messages'
require_relative 'tele2/users'
require_relative 'tele2/errors'


#tele2 = Tele2::Devices.new('Frazerbarnes', '9a13a30b-d8d8-4e01-8908-04eefcf1a9e7')
#puts(tele2.find_by_accound_id(231121205, Time.new(2018))['devices'])

# client = Tele2::Base.new('meganjones', 'c7a8b1c0-c20e-43e3-a5a9-759209dd0e3b')
# client = Tele2::Base.new('Frazerbarnes', '9a13a30b-d8d8-4e01-8908-04eefcf1a9e7')

# devices = client.devices.find_by_account_id(231121205, Time.new(2018))
# puts(devices)


# zone_usages = Array.new
# devices.each do |d|
#  iccid = d.iccid
#  puts(iccid)
#  history = client.devices.get_audit_history(iccid)
#  puts(history)
 # zone_usages << client.devices.get_zone_usage(iccid)
 # puts(zone_usages)
 # usage = d.usage.ctd_data_usage
 # puts(d.usage)
 # session = d.session
# end

# zu = client.devices.get_zone_usage(89462036051001589081)
# zone = zu.zone
# puts(zu, zone)

# d.account_custom1 = 'CCA119R'
# d.customer = 'ACCOUNT_ALTITUDE_23320'
# d.save

# history =  client.devices.get_audit_history(89462036051001589115)
# puts(history)

# location_history = client.devices.get_location_history(89462036051001589115)
# puts(location_history)

# device = client.devices.get_device(89462036051001589115)
# puts(device)
# custom = device.account_custom2
# puts(custom)

# users = client.users.get_all_users()
# puts(users)

# if device.has_valid_iccid?
#   puts(device.iccid)
# else
#   puts("INVALID!!")
# end

# response = client.messages.get_message('23232')
# puts(response)
# client.users.get_user('53')
