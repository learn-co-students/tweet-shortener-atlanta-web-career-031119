require 'pry'

def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => 2,
  "too" => 2,
  "two" => 2,
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "for" => 4
}
end

def word_substituter(string)
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
       word = dictionary[word.downcase]
    else
       word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    tweet = word_substituter(tweet)
    puts tweet
  end
end

def selective_tweet_shortener(tweet)
  tweet.size > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.size > 140 ? word_substituter(tweet) : tweet
    tweet.size > 140 ? tweet[0,140] : tweet
  end
