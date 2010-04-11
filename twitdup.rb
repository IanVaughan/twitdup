require 'rubygems'
require 'twitter'
require 'pp'

class with_auth

#httpauth = Twitter::HTTPAuth.new('ianvaughan', 'cookies1')

#client = Twitter::Base.new(httpauth)

#client.update('Heeeeyyyyooo from the Twitter Gem')
#client.update ARGV[0]

#client.friends_timeline.each { |tweet| puts tweet.text }

#client.followers().each { |f|
#  puts f.name
#}
end

class without_auth

#pp base.user_timeline
#pp base.verify_credentials
end

def lookup(name)
  begin
    user = Twitter.user(name)
    pp user
  rescue
    # 404 Not found
    puts "User #{name} not found"
  end
end

puts Twitter.friend_ids('ianvaughan')
 client.follower_ids


#lookup(ARGV[0])

=begin
puts 'User', '*'*50
pp Twitter.user('jnunemaker')
pp Twitter.user('snitch_test')

puts 'Status', '*'*50
pp Twitter.status(1533815199)

puts 'Friend Ids', '*'*50
pp Twitter.friend_ids('jnunemaker')

puts 'Follower Ids', '*'*50
pp Twitter.follower_ids('jnunemaker')



search = Twitter::Search.new.from('jnunemaker')

puts '*'*50, 'First Run', '*'*50
search.each { |result| pp result }

puts '*'*50, 'Second Run', '*'*50
search.each { |result| pp result }

puts '*'*50, 'Parameter Check', '*'*50
pp Twitter::Search.new('#austineats').fetch().results.first
pp Twitter::Search.new('#austineats').page(2).fetch().results.first
pp Twitter::Search.new('#austineats').since(1412737343).fetch().results.first




pp base.lists('pengwynn')
pp base.list_members('pengwynn', 'rubyists')


puts client.friend_ids
puts client.follower_ids
=end

