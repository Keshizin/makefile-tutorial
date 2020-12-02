# DIRETÓRIOS A SEREM INCLUÍDOS
include_directories(${PROJECT_SOURCE_DIR}/include)

# CONFIGURANDO A SAÍDA DO BINÁRIO
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})

add_executable(teste source_code_1.cpp source_code_2.cpp main.cpp)
