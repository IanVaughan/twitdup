require 'rubygems'
require 'twitter'
require 'pp'

#httpauth = Twitter::HTTPAuth.new('ianvaughan', 'cookies1')

#client = Twitter::Base.new(httpauth)

#client.update('Heeeeyyyyooo from the Twitter Gem')
#client.update ARGV[0]

#client.friends_timeline.each { |tweet| puts tweet.text }

#client.followers().each { |f|
#  puts f.name
#}

begin
  #lookup = 'ianvaughan'
  lookup = ARGV[0]
  user = Twitter.user(lookup)
  pp user
rescue
  # 404 Not found
  puts "User #{lookup} not found"
end

