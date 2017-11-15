#!/bin/bash

echo $1

curl \
	  -H "Content-Type: application/json;charset=UTF-8" \
	    -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiJsZWQiLCJ1c3IiOiJqZ3V6bWFuIn0.rJV3mttBtHWfpgFtzPVDd4o9QZJOL9Q-iIlbGjekJsc" \
	      -H "Accept: application/json, text/plain, */*" \
	        -X POST \
		  -d '{"in":'$1'}' \
		    https://api.thinger.io/v2/users/jguzman/devices/testing/led
