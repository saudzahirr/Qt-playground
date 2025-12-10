cmake_minimum_required(VERSION 3.22)

# Define the project name and version
project(QtApp VERSION 1.0)

# Set the required Qt5 version
find_package(Qt5 REQUIRED COMPONENTS Widgets)

# Specify the source files
set(SOURCES
    main.cpp
)


# Add the executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Link the executable with Qt5
target_link_libraries(${PROJECT_NAME} Qt5::Widgets)

# Set C++11 standard
set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 14)
