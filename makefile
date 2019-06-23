all: bin/teste.exe

bin/teste.exe: obj/source_code_1.o obj/source_code_2.o obj/main.o
	g++ obj/source_code_1.o obj/source_code_2.o obj/main.o -o bin/teste.exe -Wall

obj/source_code_1.o: source/source_code_1.cpp include/header1.h
	g++ -c source/source_code_1.cpp -Iinclude -o obj/source_code_1.o

obj/source_code_2.o: source/source_code_2.cpp include/header2.h include/header1.h
	g++ -c source/source_code_2.cpp -Iinclude -o obj/source_code_2.o

obj/main.o: source/main.cpp include/header2.h include/header1.h
	g++ -c source/main.cpp -Iinclude -o obj/main.o

clean-exe:
	@echo . Deletando o executavel
# Para o Microsoft Windows!
	del bin\teste.exe
# Para o UNIX!
#	rm bin/teste.exe

clean-obj:
	@echo . Deletando codigo-objetos
# Para o Microsoft Windows!
	del obj\*.o
# Para o UNIX!
#	rm obj/*.o

clean-all:
	@echo . Limpando tudo
	$(MAKE) clean-exe
	$(MAKE) clean-obj