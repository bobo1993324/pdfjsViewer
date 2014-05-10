project(pdfjsViewer)
set(SRC src/main.cpp src/FileModel.cpp)

set(CMAKE_AUTOMOC ON)
find_package(Qt5Core)
find_package(Qt5Quick)

add_executable(pdfjsViewer ${SRC})

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/src/qml DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/src/www DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
qt5_use_modules(pdfjsViewer Core Quick)

