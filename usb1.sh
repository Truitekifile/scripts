for i in $(ls /sys/bus/usb/devices/*/authorized); 
do echo 1 > $i; 
done

echo "Ports usb activés"
