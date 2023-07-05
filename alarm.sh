#!/bin/bash

. /home/ubuntu/M122/send_email.sh
. /home/ubuntu/M122/alarm.config

# Benutzereingaben abfragen
read -p "Bitte geben Sie die Adresse und Sondersignalrechte ein: " message

# E-Mail senden
send_email "$message" "$subject" "$recipient_email"