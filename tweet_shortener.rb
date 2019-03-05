# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

def word_substituter(tweet)
  replacement = dictionary
  tweet_fix = tweet.split(" ")
  for index in 0...tweet_fix.size
    replacement.each do |word, replace|
      if tweet_fix[index].downcase == word
        tweet_fix[index] = replace
      end
    end
  end
  tweet_fix.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets_fix = []
  for index in 0...tweets.size
    tweets_fix.push(word_substituter(tweets[index]))
    puts tweets_fix[index]
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size < 141
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  tweet_check = selective_tweet_shortener(tweet)
  if tweet_check.size > 140
    return tweet_check[0..136] + '...'
  else
    return tweet_check
  end
end
