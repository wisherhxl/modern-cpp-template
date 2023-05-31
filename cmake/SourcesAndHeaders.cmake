
file(GLOB_RECURSE exe_sources CONFIGURE_DEPENDS
  "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c"
  "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp"
)


set(sources "")
foreach(source ${exe_sources})
  if(NOT ${source} MATCHES "${CMAKE_CURRENT_SOURCE_DIR}/src/main.*")
    list(APPEND sources ${source})
  endif()
endforeach()

file(GLOB_RECURSE headers CONFIGURE_DEPENDS 
  "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h"
  "${CMAKE_CURRENT_SOURCE_DIR}/include/*.hpp"
)

file(GLOB_RECURSE test_sources CONFIGURE_DEPENDS 
  "${CMAKE_CURRENT_SOURCE_DIR}/test/src/*.c"
  "${CMAKE_CURRENT_SOURCE_DIR}/test/src/*.cpp"
)
