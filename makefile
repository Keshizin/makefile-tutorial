# caminho dos diretórios
INC_DIR=include
LIB_DIR=lib
OBJ_DIR=obj
BIN_DIR=bin
SRC_DIR=source
TMP_DIR=temp

# flags que devem ser passados para o compilador
OUTPUT_NAME=teste.exe
CPPSOURCES=$(wildcard $(SRC_DIR)/*.cpp)
OBJFILES=$(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(CPPSOURCES))

INC_FLAGS=-I$(INC_DIR)

all: $(BIN_DIR)/$(OUTPUT_NAME)

$(BIN_DIR)/$(OUTPUT_NAME): $(OBJFILES)
	@echo . Gerando executavel final: $@
	g++ $^ -o $@ -Wall

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@echo . Compilando $<
	@g++ -c $< $(INC_FLAGS) -o $@

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

remade:
	@echo REMADE
	$(MAKE) clean-all
	$(MAKE) all