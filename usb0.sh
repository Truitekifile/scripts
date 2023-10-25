for i in $(ls /sys/bus/usb/devices/*/authorized); 
do echo 0 > $i; 
done

echo "Ports usb désactivés !"
