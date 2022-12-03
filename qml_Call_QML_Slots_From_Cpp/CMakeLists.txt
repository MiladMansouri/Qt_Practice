cmake_minimum_required(VERSION 3.16)

project(qml_Call_QML_Slots_From_Cpp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appqml_Call_QML_Slots_From_Cpp
    main.cpp
    test.cpp
    test.h
)

qt_add_qml_module(appqml_Call_QML_Slots_From_Cpp
    URI qml_Call_QML_Slots_From_Cpp
    VERSION 1.0
    QML_FILES main.qml 
)

set_target_properties(appqml_Call_QML_Slots_From_Cpp PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appqml_Call_QML_Slots_From_Cpp
    PRIVATE Qt6::Quick)

install(TARGETS appqml_Call_QML_Slots_From_Cpp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
