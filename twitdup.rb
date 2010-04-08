
#require File.join(File.dirname(__FILE__), '..', 'lib', 'twitter')
#require File.join(File.dirname(__FILE__), 'helpers', 'config_store')
require 'rubygems'
require 'twitter'
require 'pp'

httpauth = Twitter::HTTPAuth.new('ianvaughan', 'cookies1')

client = Twitter::Base.new(httpauth)
client.update('Heeeeyyyyooo from the Twitter Gem')
client.friends_timeline.each { |tweet| puts tweet.text }

