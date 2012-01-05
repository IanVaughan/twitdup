require 'rubygems'
require 'twitter'
require 'pp'

class TwitDup

  def lookup(name)
    begin
      user = Twitter.user(name)
      pp user
    rescue
      # 404 Not found
      puts "User #{name} not found"
    end
  end

end

puts Twitter.friend_ids('ianvaughan')
client.follower_ids


