#!/usr/bin/env bash
#

UUID="4637ce28-50aa-41c8-93af-1489f5d7d296"

${HOME}/src/notify_healthchecks.sh && notify_healthchecks ${UUID} "Hourly check"
