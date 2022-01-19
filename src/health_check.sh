#!/usr/bin/env bash
#

UUID="${1}"

${HOME}/src/notify_healthchecks.sh && notify_healthchecks ${UUID} "Hourly check"
