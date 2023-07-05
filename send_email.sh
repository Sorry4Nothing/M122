#!/bin/bash

. /home/ubuntu/M122/alarm_count

send_email() {
        message=$1
        subject=$2
        recipient_email=$3

        # E-Mail senden
        echo "$message" | mail -s "$subject" "$recipient_email"

        if [ $? -eq 0 ]; then
                echo "Die E-Mail wurde erfolgreich gesendet."
                ((count+=1))
                echo "count=$count" > alarm_count
        else
                echo "Beim Senden der E-Mail ist ein Fehler aufgetreten."
        fi
}