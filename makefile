# caminho dos diretórios
INC_DIR=include
LIB_DIR=lib
OBJ_DIR=obj
BIN_DIR=bin
SRC_DIR=source
TMP_DIR=temp

# flags que devem ser passados para o compilador
OUTPUT_NAME=teste.exe

INC_FLAGS=-I$(INC_DIR)

all: $(BIN_DIR)/$(OUTPUT_NAME)

$(BIN_DIR)/$(OUTPUT_NAME): $(OBJ_DIR)/source_code_1.o $(OBJ_DIR)/source_code_2.o $(OBJ_DIR)/main.o
	g++ $(OBJ_DIR)/source_code_1.o $(OBJ_DIR)/source_code_2.o $(OBJ_DIR)/main.o -o bin/teste.exe -Wall

$(OBJ_DIR)/source_code_1.o: $(SRC_DIR)/source_code_1.cpp $(INC_DIR)/header1.h
	g++ -c $(SRC_DIR)/source_code_1.cpp $(INC_FLAGS) -o $(OBJ_DIR)/source_code_1.o

$(OBJ_DIR)/source_code_2.o: $(SRC_DIR)/source_code_2.cpp $(INC_DIR)/header2.h $(INC_DIR)/header1.h
	g++ -c $(SRC_DIR)/source_code_2.cpp $(INC_FLAGS) -o $(OBJ_DIR)/source_code_2.o

$(OBJ_DIR)/main.o: $(SRC_DIR)/main.cpp $(INC_DIR)/header2.h $(INC_DIR)/header1.h
	g++ -c $(SRC_DIR)/main.cpp $(INC_FLAGS) -o $(OBJ_DIR)/main.o

clean-exe:
	@echo . Deletando o executavel
# Para o Microsoft Windows!
	del $(BIN_DIR)\$(OUTPUT_NAME)
# Para o UNIX!
#	rm bin/teste.exe

clean-obj:
	@echo . Deletando codigo-objetos
# Para o Microsoft Windows!
	del $(OBJ_DIR)\*.o
# Para o UNIX!
#	rm obj/*.o

clean-all:
	@echo . Limpando tudo
	$(MAKE) clean-exe
	$(MAKE) clean-obj