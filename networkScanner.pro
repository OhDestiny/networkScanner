QT       += core gui
QT += network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    aboutauthor.cpp \
    aboutmachine.cpp \
    helpwindow.cpp \
    hostscanthread.cpp \
    hostscanthreadone.cpp \
    hostscanthreadthree.cpp \
    hostscanthreadtwo.cpp \
    main.cpp \
    mainwindow.cpp \
    portscanthread.cpp \
    someportscanthread.cpp

HEADERS += \
    aboutauthor.h \
    aboutmachine.h \
    helpwindow.h \
    hostscanthread.h \
    hostscanthreadone.h \
    hostscanthreadthree.h \
    hostscanthreadtwo.h \
    mainwindow.h \
    portscanthread.h \
    someportscanthread.h \
    tools.h

FORMS += \
    aboutauthor.ui \
    aboutmachine.ui \
    helpwindow.ui \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc

# ICON += "://res/appIcon.png"


# add dynamic link lib
LIBS += -lpthread libwsock32 libws2_32
