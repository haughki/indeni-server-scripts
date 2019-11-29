#!/usr/bin/env bash

collector="service indeni-collector"
server="service indeni-server"
at="service indeni-automation"

coll_command=""
serv_command=""
at_command=""

if [ -z $1 ]; then
    coll_command="${collector} restart"
    serv_command="${server} restart"
    at_command="${at} restart"
else
    case $1 in
        start)
            coll_command="${collector} start"
            serv_command="${server} start"
            at_command="${at} start"
            ;;
        stop)
            coll_command="${collector} stop"
            serv_command="${server} stop"
            at_command="${at} stop"
            ;;
        *)
            echo "invalid argument: ${1}"
            exit
            ;;
    esac
fi


echo $coll_command
echo $serv_command
echo $at_command

$coll_command
$serv_command
$at_command
