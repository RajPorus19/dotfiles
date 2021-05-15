quote=$(curl https://api.quotable.io/random | jq '.["content"]')
notify-send "Welcome back Porus, $quote" 
