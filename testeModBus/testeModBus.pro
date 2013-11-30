QT       += core

TARGET = testeModBus
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    libmodbus/modbus-tcp.c \
    libmodbus/modbus-rtu.c \
    libmodbus/modbus-data.c \
    libmodbus/modbus.c


unix: LIBS += -lmodbus

unix:DEFINES += _TTY_POSIX_

win32:DEFINES += _TTY_WIN_  WINVER=0x0501

win32:LIBS += -lsetupapi -lwsock32 -lws2_32

win32: HEADERS += \
    	libmodbus/modbus-version.h \
   	libmodbus/modbus-tcp-private.h \
    	libmodbus/modbus-tcp.h \
    	libmodbus/modbus-rtu-private.h \
    	libmodbus/modbus-rtu.h \
    	libmodbus/modbus-private.h \
    	libmodbus/modbus.h \
    	libmodbus/config.h

