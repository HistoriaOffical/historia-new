file(GLOB HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/../include/historiabls/*.hpp)
source_group("SrcHeaders" FILES ${HEADERS})

add_library(historiabls
  ${HEADERS}
  ${CMAKE_CURRENT_SOURCE_DIR}/privatekey.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/bls.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/chaincode.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/elements.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/extendedprivatekey.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/extendedpublickey.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/legacy.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/schemes.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/threshold.cpp)

target_include_directories(historiabls
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
    $<$<BOOL:${GMP_FOUND}>:${GMP_INCLUDES}>
    ${CMAKE_CURRENT_SOURCE_DIR}/../include/historiabls
    ${CMAKE_CURRENT_SOURCE_DIR}/../depends/mimalloc/include
    ${CMAKE_CURRENT_SOURCE_DIR}/../depends/relic/include
    ${CMAKE_CURRENT_BINARY_DIR}/../depends/relic/include
)

target_compile_definitions(historiabls
  PRIVATE
    BLSALLOC_MIMALLOC=1
)

target_link_libraries(historiabls
  PUBLIC
    relic_s
    mimalloc-static
)

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/../depends/relic/include/ DESTINATION include/historiabls)
install(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/../depends/relic/include/ DESTINATION include/historiabls)
install(FILES ${HEADERS} DESTINATION include/historiabls)
install(FILES $<TARGET_FILE:historiabls> DESTINATION lib)

if(BUILD_BLS_TESTS)
  include(${CMAKE_CURRENT_SOURCE_DIR}/../depends/catch2/CMakeLists.txt)

  add_executable(runtest test.cpp)
  target_link_libraries(runtest
                        PRIVATE historiabls
                        PRIVATE catch2)
endif()

if(BUILD_BLS_BENCHMARKS)
  add_executable(runbench test-bench.cpp)
  target_link_libraries(runbench PRIVATE historiabls)
endif()
