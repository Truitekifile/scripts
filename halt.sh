echo "Attention cela terminera par la meme occasion votre liaison ssh, etes vous sur de vouloir continuer ? "
read input

if [ "$input" = "o" ]; then
	halt

else
	echo "Annulation"
fi
