# vim: set filetype=cmake  : vim modeline( set )
cmake_minimum_required (VERSION 2.8)

project(%HERE%%FDIR%)

add_definitions('-g')
add_definitions('-Wall')
add_definitions('-std=c++11')

# ============find-so-lib=================

include_directories(
                      )

link_directories(
                   )

# ============ target =================

set(TARGET main)
add_executable(${TARGET}  ${TARGET}.cpp)

#target_link_libraries(${TARGET}
                            #)


#add_library(${TARGET}  SHARED ${TARGET}.cpp)

#set_target_properties (target PROPERTIES COMPILE_FLAGS "-fPIC")    # need -fPIC!!!
#set_directory_properties(PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES ${CMAKE_SOURCE_DIR}/${PROJECT_NAME})
