cmake_minimum_required(VERSION 3.16)

project(Stockage VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appStockage
    main.cpp
       MANUAL_FINALIZATION
)

qt_add_qml_module(appStockage
    URI Stockage
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES TopBar.qml
        QML_FILES KeyInput.qml
        QML_FILES StyleButton.qml
        QML_FILES StylePopUp.qml
        QML_FILES BottomBar.qml
        QML_FILES AuthenticationPage.qml
        QML_FILES ViewDataPage.qml
        QML_FILES DeleteDataPage.qml
        QML_FILES AddNewDataPage.qml
        QML_FILES HelpPage.qml
       # RESOURCES android/res/values/styles.xml android/AndroidManifest.xml android/build.gradle android/res/values/libs.xml android/res/xml/qtprovider_paths.xml android/gradle/wrapper/gradle-wrapper.jar android/gradle/wrapper/gradle-wrapper.properties android/gradle.properties android/gradlew android/gradlew.bat
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appStockage PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appStockage
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)
set_property(TARGET app${PROJECT_NAME} APPEND PROPERTY
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
)
target_link_libraries(appStockage
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appStockage
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
qt_finalize_executable(app${PROJECT_NAME})
