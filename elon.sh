elon-test-api(){
curl --request GET 'https://api.twitter.com/2/tweets/search/recent?query=from:twitterdev' --header "Authorization: Bearer $TWITTER_BEARER_TOKEN"
echo ""
}

elon-get-ten-tweets(){
echo "Todo: implement loop and understand all secrets"
}
