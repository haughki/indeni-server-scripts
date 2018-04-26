#!/usr/bin/env bash

collector="service indeni-collector"
server="service indeni-server"

coll_command=""
serv_command=""

if [ -z $1 ]; then
    coll_command="${collector} restart"
    serv_command="${server} restart"
else
    case $1 in
        start)
            coll_command="${collector} start"
            serv_command="${server} start"
            ;;
        stop)
            coll_command="${collector} stop"
            serv_command="${server} stop"
            ;;
        *)
            echo "invalid argument: ${1}"
            exit
            ;;
    esac
fi


echo $coll_command
echo $serv_command

$coll_command
$serv_command
