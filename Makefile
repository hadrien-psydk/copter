
TARGET=copter

.PHONY: clean

all: $(TARGET)

$(TARGET): main.cpp Makefile
	g++ main.cpp -o $(TARGET)

clean:
	rm -f $(TARGET)


install: $(TARGET)
	cp $(TARGET) /usr/bin/
