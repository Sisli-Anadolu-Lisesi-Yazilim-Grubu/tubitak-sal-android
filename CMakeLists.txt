cmake_minimum_required(VERSION 3.1.0)

project(TUBITAK-SAL)

set(EXECUTABLE_OUTPUT_PATH "bin")
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt5 COMPONENTS Quick Core)

qt5_add_resources(RESOURCES 
	Kaynak_Dosyalar/qml.qrc
    resources/proje__fotoraflari.qrc
    resources/resimler.qrc
)

set(SOURCE 
	${SOURCE}
	Kaynak_Dosyalar/main.cpp
    Kaynak_Dosyalar/namespace.h
    Kaynak_Dosyalar/program.h
    Kaynak_Dosyalar/program.cpp
    Kaynak_Dosyalar/veriler/veriler1.h
    Kaynak_Dosyalar/veriler/veriler2.h
    Kaynak_Dosyalar/veriler/veriler3.h
    Kaynak_Dosyalar/veriler/veriler4.h
    Kaynak_Dosyalar/veriler/veriler5.h
    Kaynak_Dosyalar/veriler/veriler6.h
    Kaynak_Dosyalar/veriler/veriler7.h
    Kaynak_Dosyalar/veriler/veriler8.h
    Kaynak_Dosyalar/veriler/veriler9.h
    Kaynak_Dosyalar/veriler/veriler10.h
    Kaynak_Dosyalar/veriler/veriler11.h
    Kaynak_Dosyalar/veriler/veriler12.h
    Kaynak_Dosyalar/veriler/veriler13.h
    Kaynak_Dosyalar/veriler/veriler14.h
    Kaynak_Dosyalar/veriler/veriler15.h
    Kaynak_Dosyalar/veriler/veriler16.h
    Kaynak_Dosyalar/veriler/veriler17.h
    Kaynak_Dosyalar/veriler/veriler18.h
    Kaynak_Dosyalar/veriler/veriler19.h
    Kaynak_Dosyalar/veriler/veriler20.h
    Kaynak_Dosyalar/veriler/veriler21.h
    Kaynak_Dosyalar/veriler/veriler22.h
    Kaynak_Dosyalar/veriler/veriler23.h
    Kaynak_Dosyalar/veriler/veriler24.h
)

add_executable(TUBITAK-SAL ${SOURCE} ${RESOURCES})
qt5_use_modules(TUBITAK-SAL Quick Core)