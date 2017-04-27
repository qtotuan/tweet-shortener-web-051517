def dictionary
  dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(string)
  words = string.split(" ")
  words.collect do |e|
    if dictionary.keys.include?(e.downcase)
      e = dictionary[e.downcase]
    else
      e
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |e|
    puts word_substituter(e)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + '...'
  else
    tweet
  end
end
