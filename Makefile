rhino.jar: rhino
	if [ ! -e rhino/build/rhino*/js.jar ]; then cd rhino; ant jar; fi
	cp rhino/build/rhino*/js.jar rhino.jar

rhino:
	git clone https://github.com/mozilla/rhino

.PHONY: clean
clean:
	rm -f rhino.jar 
	rm -rf rhino
