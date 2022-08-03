#!/usr/bin/env bash

day=$(date +"%a")

case $day in 

  Mon | Tue | Wed | Thu | Fri)
    echo "today is a weekday"
    ;;

  Sat | Sun) 
    echo "today is the weekend"
    ;;

  *)
    echo "date not recognized"
    ;; 
esac
