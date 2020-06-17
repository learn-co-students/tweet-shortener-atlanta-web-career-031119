# Write your code here.

def dictionary 
  
  words = {
    
    "hello" => "hi",
     "to" => "2",
     "two"=> "2",
      "too"=>"2",
      "for"=> "4",
       "four"=>"4",
       "be"=>"b",
       "you"=>"u",
       "at"=>"@",
       "and"=>"&",
    
  }
  
end 

def word_substituter(string)
  array = []
  string.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      array << word
    else
      array << word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(string)
 
  string.each {|x| puts word_substituter (x)}



end   

def selective_tweet_shortener(string)
  
  
  string.length > 140 ? word_substituter(string) : string
  
  
end   


def shortened_tweet_truncator(string) 
  short = word_substituter(string)
  short.length > 140 ? short[0..136] + "..." : short
  
end   