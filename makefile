bundle:
	cp -v k.com dok.com
	zip -r dok.com 0.k

run: bundle
	./dok.com

clean:
	rm -f dok.com
