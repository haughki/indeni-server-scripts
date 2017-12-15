#!/usr/bin/env bash

collector="/etc/init.d/indeni-collector"
server="/etc/init.d/indeni-server"

coll_command=""
serv_command=""

if [ -z $1 ]; then
    coll_command="${collector} restart"
    serv_command="${server} restart"
else
    case $1 in
        start)
            command="${base_command} start"
            ;;
        stop)
            command="${base_command} stop"
            ;;
        restart)
            command="${base_command} restart"
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
