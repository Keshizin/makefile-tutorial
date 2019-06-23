# MAKEFILE TUTORIAL
O objetivo deste projeto é criar um makefile genérico que atenda a maioria dos projetos com o mínimo de modificações.
Este makefile foi baseado no tutorial criado por Darcamo (usuário do fórum do Ubuntu, 2007). Houve algumas alterações em relação a estrutura de diretórios do projeto para deixar mais organizado.

### A estrutura de diretórios

- Projeto
  |- bin (lugar onde será gerado o executável)
  |- include (lugar onde ficará os headers)
  |- lib (lugar onde ficará as bibliotecas estáticas)
  |- obj (lugar onde ficará os código-objetos)
  |- source (lugar onde ficará os código-fontes)
  |- temp (armazena arquivos temporários de makefile)

### Evolução do Makefile
A evolução de como foi criado este makefile pode ser acompanhada pelos commits que foram feitos.

##### Primeiro commit
O projeto é compilado sem o uso de nenhum makefile. Ou seja, utilizamos os comandos de compilação (GCC) diretamente no terminal.

`g++ source/source_code_1.cpp source/source_code_2.cpp source/main.cpp -Iinclude -o bin/teste.exe -Wall`
