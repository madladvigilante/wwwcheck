#!/bin/bash

# List of websites to check
websites=("https://github.com" "https://archlinux.org")

# Loop through each website
for site in "${websites[@]}"
do
  # Get the HTTP status code
  status_code=$(curl -o /dev/null -s -w "%{http_code}\n" "$site")

  # Check if the status code is 200 (OK)
  if [ $status_code -eq 200 ]; then
    echo "Website $site is up. Status code: $status_code"
  else
    echo "Website $site is down or returned an error. Status code: $status_code"
  fi
done