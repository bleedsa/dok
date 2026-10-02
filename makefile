dok.com: *.k
	sed -i 's/\t/ /g' *.k 
	cp -v k.com dok.com
	zip -r dok.com 0.k

run: dok.com
	rlwrap ./dok.com

clean:
	rm -f dok.com
