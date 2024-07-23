cmake_minimum_required(VERSION 3.28)
project(learnVulkan)

set(CMAKE_CXX_STANDARD 17)

add_executable(${PROJECT_NAME} src/main.cpp)

# Find Vulkan package
find_package(Vulkan REQUIRED)
target_include_directories(${PROJECT_NAME} PUBLIC ${Vulkan_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} Vulkan::Vulkan)

# Find PkgConfig package
find_package(PkgConfig REQUIRED)

# Find GLM
pkg_search_module(GLM REQUIRED glm)
include_directories(${GLM_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} ${GLM_LIBRARY_DIRS})

# Include directories for your local GLFW headers and libraries
include_directories(${CMAKE_SOURCE_DIR}/include)
link_directories(${CMAKE_SOURCE_DIR}/lib)

# Link against your local GLFW libraries
target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/lib/libglfw.3.4.dylib)
