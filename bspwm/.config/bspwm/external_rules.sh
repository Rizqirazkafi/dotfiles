#!/bin/sh 

class=$2 instance=$3

case $class in
    Gimp|Gimp?*)
        [ "$instance" = Gimp ] && echo bspc rule $instance desktop=^4 state=floating follow=on;;
esac

        



