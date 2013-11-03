#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

#
# this is the script for the twitter bot PetoHai
# generated on Sat Nov 02 15:26:42 +0000 2013
#

consumer_key 'PNX6crvsfoXZgjTBt1QDaA'
consumer_secret 'uCGRaNHEPpEU7gjmSUdUJeriQMdrQJhIEaK2XxdaM'

secret 'CfE2yvEf0niJrG6kCrz6O92hq0HA2UIcO6rUbQcjCWzNP'
token '2170307058-PpEC8LIDk7VgFBWSPAv7AuozQnaUmg90m6mGmiF'

# remove this to send out tweets
# debug_mode

# remove this to update the db
no_update
# remove this to get less output when running
verbose

# here's a list of users to ignore
blacklist "abc", "def"

# here's a list of things to exclude from searches
exclude "hi", "spammer", "junk"

number_of_tweets_today = 0

while number_of_tweets_today < 1000 do

search "I wanna stop smoking" do |tweet|
 reply "#{tweet_user(tweet)} o hai! that's good. smoking kills, stopping helps, http://smokefree.nhs.uk/resources/ what made you wanna stop?", tweet
 puts number_of_tweets_today
 number_of_tweets_today += 1 
 sleep 30
end

update_config
end
