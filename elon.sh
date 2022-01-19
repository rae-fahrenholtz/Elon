elon-secrets(){
export TWITTER_API=nMc93xvLDShrs9zWCIXkkEzY3
export TWITTER_API_SECRET=6lNfa1xHn6zKgvgG0GfnGkVpIIEq9x9J0W0amTUebfFZghiNTR
export TWITTER_BEARER_TOKEN=AAAAAAAAAAAAAAAAAAAAAEHFYAEAAAAAw1lOeq809FaU5DvIcBdSjNAdk7A%3Db85qEzVHXg1ou2cDQUplxefwqGf4nx5zJB0K4HMURPFMb2lhLg
export TWITTER_ACCESS_TOKEN=1257341515858235392-TKJLY70jvUbdSnfXSbeoOm75HoVWl5
export TWITTER_ACCESS_SECRET=Tp6jsaeIpaxHAJEafttpvezHLRPyJ77dlMK8WLKCUnTC3
}

elon-tests-api-smoketest(){

curl --request GET 'https://api.twitter.com/2/tweets/search/recent?query=from:twitterdev' --header "Authorization: Bearer $TWITTER_BEARER_TOKEN"
echo ""
}

elon-get-ten-tweets(){
echo "Todo: implement loop and understand all secrets"
}
