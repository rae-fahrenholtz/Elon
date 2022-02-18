#simple function to test Twitter API, gets single tweet
elon-api-twitter(){
id=44196397
curl --request GET 'https://api.twitter.com/2/tweets/search/recent?query=harris' --header "Authorization: Bearer $TWITTER_BEARER_TOKEN"
echo ""
}

#get max_result number of most recent elon tweets
elon-test-api(){
  id=44196397 #elon musk twitter id
  curl --request GET "https://api.twitter.com/2/users/$id/tweets?\
max_results=$2\
&expansions=referenced_tweets.id\
&tweet.fields=public_metrics,created_at\
&start_time=2011-01-01T00:00:00Z\
&end_time=$1\
&exclude=retweets,replies\
" --header "Authorization: Bearer $TWITTER_BEARER_TOKEN"
echo ""
}

#loop elon-test-api to get multiple calls for most recent tweets
elon-get-tweets(){
  upTo="2022-01-31T00:00:00Z"
  for i in {1..33}
  do
    echo $i
    elon-test-api $upTo 100 >  ./tweets/$upTo
    # jq -r means return raw, no quotes
    upTo=$(cat ./tweets/$upTo | jq -r '.data[-1].created_at')
  done  

}

