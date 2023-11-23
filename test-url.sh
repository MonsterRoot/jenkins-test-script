#!/bin/bash

http_status=$(curl -k -s  -o /dev/null -i -w "%{http_code}" "$1")
echo  $http_status
if [[ "$http_status" == "200" ]];then
  echo "success"
else
  echo "failure"
fi