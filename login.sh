#!/bin/bash
##
## Copyright (c) SNFX NET SOLUTION 2018. All Rights Reserved
## Copyright (c) Modified, FirenetDev 2022. All Rights Reserved
##

status=$(wget "http://APILink/api/authKey.php?user=$username&password=$password&key=APIKey" -q -O -)
[ "$status" != '' ] && [ "$status" = "1" ] && echo $status && exit 0 || echo $status && exit 1