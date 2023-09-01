TARGET = main
BUILD_DIR = build
DEBUG = 1
CC = gcc

C_INCLUDES = \
-Iinclude

C_SOURCES = \
apue/apue.c \
time/time.c

C_DEFS = 
CFLAGS = $(C_DEFS) $(C_INCLUDES)
CFLAGS += -Wall -fPIC
LIBS = -lpthread
LDFLAGS = $(LIBS)

ifeq ($(DEBUG), 1)
CFLAGS += -g
endif

OBJECTS = $(addprefix $(BUILD_DIR)/, $(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

all: $(BUILD_DIR)/$(TARGET)

run:
	./$(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/$(TARGET): $(OBJECTS)
	 $(CC) $(OBJECTS) $(LDFLAGS) -o $@

$(BUILD_DIR)/%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	-@rm $(BUILD_DIR)/*.o
	-@rm $(BUILD_DIR)/main

.PHONY:clean all