
TARGET=copter

.PHONY: clean

all: $(TARGET)

$(TARGET): main.cpp Makefile
	g++ main.cpp -o $(TARGET)

clean:
	rm -f $(TARGET)


install: $(TARGET)
ifneq ($(DESTDIR),)
	mkdir -p $(DESTDIR)/usr/bin
endif
	cp $(TARGET) $(DESTDIR)/usr/bin/
