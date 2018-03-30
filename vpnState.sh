#!/bin/bash


	VPN=$(nmcli con show |grep tun0)
	if [[ "$VPN" ]]; then
		echo "VPN OK"
		echo $(curl -s http://ifconfig.me)
	else
		echo "VPN KO !!!!!!!"
		echo $(curl -s http://ifconfig.me)
	fi

