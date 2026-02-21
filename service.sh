#!/system/bin/sh
MODDIR=${0%/*}

until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 2
done

(
    TARGET=100
    MAIN_NODE="/sys/class/leds/led:torch_0/brightness"

    if [ ! -f "$MAIN_NODE" ]; then
        exit 0
    fi

    while true; do
        read CURRENT < "$MAIN_NODE" 2>/dev/null
        
        if [ -n "$CURRENT" ] && [ "$CURRENT" -gt 0 ]; then
            
            if [ "$CURRENT" -ne "$TARGET" ]; then
                for i in 0 1 2 3; do
                    echo "$TARGET" > /sys/class/leds/led:torch_${i}/brightness 2>/dev/null
                done
            fi
            
            sleep 0.5
            
        else
            sleep 1.2
        fi
    done
) &