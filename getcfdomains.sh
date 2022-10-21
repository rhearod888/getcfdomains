#!/bin/sh
 curl -X GET "https://api.cloudflare.com/client/v4/zones?page=1&per_page=50&account.id=f7cc5dfdfdf9e4cfeaebab03115f25e&status=active" -H "Authorization: Bearer Your API Token" \ -H "Content-Type: application/json" | jq '.result[] | "\(.id) \(.name)"' >> listdomains.txt
