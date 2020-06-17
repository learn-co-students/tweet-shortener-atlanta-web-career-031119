# Write your code here.
require 'pry'

def dictionary
  {
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter(tweet)
  tweet_pieces=tweet.split
  tweet_pieces.map do |chirp|
    dictionary.map do |long, short|
      if chirp.upcase==long.upcase
        chirp.replace short
      end
    end
  end
  tweet=tweet_pieces.join(" ")
  return tweet
end

def bulk_tweet_shortener(tweets)
  tweets.map do |twit|
    puts word_substituter(twit)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  chirp=selective_tweet_shortener(tweet)
  if chirp.length>140
    bawk=chirp[0..136]+"..."
    return bawk
  else
    return chirp
  end
end
