QT += quick
CONFIG += c++11
CONFIG += resources_big

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Kaynak_Dosyalar/main.cpp \
    Kaynak_Dosyalar/program.cpp

RESOURCES += \
    resources/resimler.qrc \
    resources/proje__fotoraflari.qrc \
    Kaynak_Dosyalar/qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    Kaynak_Dosyalar/veriler/veriler1.h \
    Kaynak_Dosyalar/veriler/veriler2.h \
    Kaynak_Dosyalar/veriler/veriler3.h \
    Kaynak_Dosyalar/veriler/veriler4.h \
    Kaynak_Dosyalar/veriler/veriler5.h \
    Kaynak_Dosyalar/veriler/veriler6.h \
    Kaynak_Dosyalar/veriler/veriler7.h \
    Kaynak_Dosyalar/veriler/veriler8.h \
    Kaynak_Dosyalar/veriler/veriler9.h \
    Kaynak_Dosyalar/veriler/veriler10.h \
    Kaynak_Dosyalar/veriler/veriler11.h \
    Kaynak_Dosyalar/veriler/veriler12.h \
    Kaynak_Dosyalar/veriler/veriler13.h \
    Kaynak_Dosyalar/veriler/veriler14.h \
    Kaynak_Dosyalar/veriler/veriler15.h \
    Kaynak_Dosyalar/veriler/veriler16.h \
    Kaynak_Dosyalar/veriler/veriler17.h \
    Kaynak_Dosyalar/veriler/veriler18.h \
    Kaynak_Dosyalar/veriler/veriler19.h \
    Kaynak_Dosyalar/veriler/veriler20.h \
    Kaynak_Dosyalar/veriler/veriler21.h \
    Kaynak_Dosyalar/veriler/veriler22.h \
    Kaynak_Dosyalar/veriler/veriler23.h \
    Kaynak_Dosyalar/veriler/veriler24.h \
    Kaynak_Dosyalar/namespace.h \
    Kaynak_Dosyalar/program.h

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

contains(ANDROID_TARGET_ARCH,x86) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}
