#!/bin/bash
### andy.dustin@umbrellar.com [rev:9bc3b17]
## Check_MK check that salt-master is enabled and running

service='salt-master'

OUT_CODE=3
OUT_NAME=check_$service
OUT_PERF='-'
OUT_STRING='Output was never defined'

status=`systemctl is-active $service`
enabled=`systemctl is-enabled $service`
result=0

[ $status == 'active' ] || result=$(($result+1))
[ $enabled == 'enabled' ] || result=$(($result+2))

case $result in
    0)
        OUT_CODE=0
        OUT_STRING="$service is enabled and running"
        ;;
    1)
        OUT_CODE=2
        OUT_STRING="$service is enabled but not running"
        ;;
    2)
        OUT_CODE=1
        OUT_STRING="$service is not enabled but is running"
        ;;
    3)
        OUT_CODE=2
        OUT_STRING="$service is not enabled and is not running"
        ;;
    *) 
        OUT_STRING="Error evaluating outputs"
        ;;
esac

echo $OUT_CODE $OUT_NAME $OUT_PERF $OUT_STRING
exit $OUT_CODE