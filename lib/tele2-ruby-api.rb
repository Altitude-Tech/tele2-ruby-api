require 'httparty'
require 'json'

require_relative 'tele2/version'
require_relative 'tele2/base'
require_relative 'tele2/devices'

tele2 = Tele2::Device.new('Frazerbarnes', '9a13a30b-d8d8-4e01-8908-04eefcf1a9e7')
#tele2.device_info('89462036051001589115')
#puts(tele2.find_by_last_modified(Time.new(2018)))

response_json = tele2.find_by_accound_id(231121205, Time.new(2018))

puts(response_json['devices'])

#puts(response_json['errorCode'])

#print(CGI.escape(Time.new(2018).iso8601))

puts(tele2.find_by_device_id(89462036051001589073))

