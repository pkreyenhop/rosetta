MMAKEFILES = $(shell find . -maxdepth 2 -type f -name Makefile)
SUBDIRS   = $(filter-out ./,$(dir $(MMAKEFILES)))



clean:
	for dir in $(SUBDIRS); do \
		make -C $$dir clean; \
	done

	
