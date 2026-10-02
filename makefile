bundle:
	cp -v k.com dok.com
	cp -v dok.k 0.k
	cat dok.k | zip -9 dok.com - 0.k
	rm -f 0.k
