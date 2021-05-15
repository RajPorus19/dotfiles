quote=$(curl https://api.quotable.io/random)
author=$(echo "$quote" | jq '.["author"]' | tr -d '"')
content=$(echo "$quote" | jq '.["content"]')
notify-send "Welcome back Porus, $content - $author" 
