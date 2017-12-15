#!/bin/bash

SLACK_WEBHOOK_URL=https://hooks.slack.com/services/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
./bin/behat --colors

if [ $? -eq 0 ]
then
	echo ":white_check_mark: *Behat tests*: OK" > slack_output__behat.txt
  exit 0
else
	echo ":warning: *Behat tests*: Failed" > slack_output__behat.txt
  exit 1
fi
