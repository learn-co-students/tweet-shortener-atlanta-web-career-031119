def dictionary
  {"hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "For" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
  }
end

#word_substituter
def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.map! do |word|
    if dictionary.keys.include?(word)
      dictionary[word]
    else
      word
    end
  end
  new_tweet = tweet_array.join(" ")
  new_tweet
end

#bulk_tweet_shortener
def bulk_tweet_shortener(tweet_array)
  tweet_array.each {|tweet| puts word_substituter(tweet)}
end

#selective_tweet_shortener
def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

#shortened_tweet_truncator
def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0..135] + " ..." : tweet
end