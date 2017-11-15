#!/bin/bash

echo $1
echo $2

curl \
	  -H "Content-Type: application/json;charset=UTF-8" \
	    -H "Authorization: Bearer TOKEN" \
	      -H "Accept: application/json, text/plain, */*" \
	        -X POST \
		  -d '{"in":'$1'}' \
		    https://api.thinger.io/v2/users/jguzman/devices/testing/led
