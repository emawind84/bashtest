#!/bin/bash

echo "this file name: $0"

echo "OPTIND starts at $OPTIND"
while getopts ":pq:" optname
  do
    case "$optname" in
      "p")
        echo "Option $optname is specified"
        ;;
      "q")
        echo "Option $optname has value $OPTARG"
        ;;
      "?")
        echo "Unknown option $OPTARG"
        ;;
      ":")
        echo "No argument value for option $OPTARG"
        ;;
      *)
      # Should not occur
        echo "Unknown error while processing options"
        ;;
    esac
    echo "OPTIND is now $OPTIND"
  done

echo $OPTIND

echo ${@:$OPTIND}

shift $(($OPTIND - 1))

echo $1
