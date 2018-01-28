CWD = $(realpath $(dir $(firstword $(MAKEFILE_LIST))))

SRC=$(wildcard *.txt)

SRC=$(wildcard *.txt)

SIGNED=$(SRC:.txt=.txt.asc)

CHECKSUM=$(SRC:.txt=.txt.checksum)
CHECKSUM_XML=$(SRC:.txt=.txt.xml)

CHECKSUM_XZ=$(CHECKSUM:.txt.checksum=.txt.checksum.xz)
CHECKSUM_XML_XZ=$(CHECKSUM_XML:.txt.xml=.txt.xml.xz)

CHECKSUM_GZ=$(CHECKSUM:.txt.checksum=.txt.checksum.gz)
CHECKSUM_XML_GZ=$(CHECKSUM_XML:.txt.xml=.txt.xml.gz)

CHECKSUM_ZIP=$(CHECKSUM:.txt.checksum=.txt.checksum.zip)
CHECKSUM_XML_ZIP=$(CHECKSUM_XML:.txt.xml=.txt.xml.zip)

OBJS=${CHECKSUM} ${CHECKSUM_XML} \
	${CHECKSUM_XML} ${CHECKSUM_XML_XZ} \
	${CHECKSUM_GZ} ${CHECKSUM_XML_GZ} \
	${CHECKSUM_ZIP} ${CHECKSUM_XML_ZIP}

%.txt.checksum: %.txt
	hashdeep -l -c md5,sha1,sha256,tiger,whirlpool ${<} > ${@}

%.txt.checksum.xz: %.txt.checksum
	xz --force --compress --keep --extreme -9 ${<}

%.txt.checksum.gz: %.txt.checksum
	gzip --force --keep --best ${<}

%.txt.checksum.zip: %.txt.checksum
	zip -9 ${@} ${<}

%.txt.xml: %.txt
	hashdeep -d -l -c md5,sha1,sha256,tiger,whirlpool ${<} > ${@}

%.txt.xml.xz: %.txt.xml
	xz --compress --keep --extreme -9 ${<}

%.txt.xml.gz: %.txt.xml
	gzip --force --keep --best ${<}

%.txt.xml.zip: %.txt.xml
	zip -9 ${@} ${<}

checksums: ${OBJS}
	hashdeep -l -c md5,sha1,sha256,tiger,whirlpool ${^} > ${@}

checksums.xml: ${OBJS}
	hashdeep -d -l -c md5,sha1,sha256,tiger,whirlpool ${^} > ${@}

.DEFAULT: all
.PHONY: debug
debug:
	$(info $${SRC}=${SRC})
	$(info $${CHECKSUM}=${CHECKSUM})
	$(info $${CHECKSUM_XZ}=${CHECKSUM_XZ})
	$(info $${CHECKSUM_GZ}=${CHECKSUM_GZ})
	$(info $${CHECKSUM_ZIP}=${CHECKSUM_ZIP})

.PHONY: all
all: checksums checksums.xml

.PHONY: clean
clean:
	-rm -f checksums checksums.xml ${OBJS}

.PHONY: gpg
gpg: ${CWD}/.gpg/random_seed

${CWD}/.gpg/random_seed: ${CWD}/.gpg
	gpg --homedir=${^} --gen-key

${CWD}/.gpg:
	mkdir -p ${@}

%.txt.asc: %.txt
	gpg --homedir=${CWD}/.gpg --clearsign ChallengerLaunch.txt

.PHONY: signed
signed: ${SIGNED}
