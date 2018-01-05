SRC=$(wildcard *.txt)
OBJ=$(SRC:.txt=.txt.checksum)
OBJ2=$(SRC:.txt=.txt.xml)

%.txt.checksum: %.txt
	hashdeep -l -c md5,sha1,sha256,tiger,whirlpool $< > $@

%.txt.xml: %.txt
	hashdeep -d -l -c md5,sha1,sha256,tiger,whirlpool $< > $@

.PHONY: all
.DEFAULT: all
all: checksums checksums.xml

checksums: ${OBJ2} ${OBJ} ${SRC}
	hashdeep -l -c md5,sha1,sha256,tiger,whirlpool $^ > ${@}

checksums.xml: ${OBJ2} ${OBJ} ${SRC}
	hashdeep -d -l -c md5,sha1,sha256,tiger,whirlpool $^ > ${@}


.PHONY: clean
clean:
	-rm -f checksums checksums.xml ${OBJ} ${OBJ2}
