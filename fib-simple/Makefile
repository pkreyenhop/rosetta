MMAKEFILES = $(shell find . -maxdepth 2 -type f -name Makefile)
SUBDIRS   = $(filter-out ./,$(dir $(MMAKEFILES)))


all:
	for dir in $(SUBDIRS); do \
		make -C $$dir all; \
	done

clean:
	for dir in $(SUBDIRS); do \
		make -C $$dir clean; \
	done

run:
	for dir in $(SUBDIRS); do \
		echo; \
		echo $$dir; \
		make -C $$dir run; \
		echo; \
	done
	
