#!/bin/bash

. /home/ubuntu/M122/alarm_count
. /home/ubuntu/M122/alarm.config
. /home/ubuntu/M122/send_email.sh

send_email "Anzahl der Heutigen Einsätze $count" "$subject_cron" "$recipient_email" && echo "count=0" > alarm_count