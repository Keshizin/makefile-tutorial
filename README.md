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

##### Segundo commit
Criamos o primeiro makefile. Apenas copiamos o comando de compilação utilizado anteriormente no arquivo makefile. Ainda não estamos utilizando todo o poder que o make oferece para construir nosso programa.

##### Terceiro commit
Incluindo as dependências no makefile. Esta funcionalidade garante o make possa compilar apenas os arquivos necessários.

##### Quarto commit
No quarto commit, incluímos as variáveis no makefile para evitar repetições como os nomes de diretórios. Se houver a necessidade de mudar o nome de algum diretório, podemos alterar facilmente no makefile mudando apenas a sua variável.

##### Quinto commit
Conforme o projeto vai crescendo, precisamos adicionar novos arquivos de código-fonte ou outras bibliotecas. Alteramos o nosso makefile para que ele possa incluir novos arquivos e criar novas depedências de forma automática.

##### Sexto commit
Alteramos novamente o makefile para incluir as dependências referentes ao header também. Utilizamos a flag -MM do comando GCC para criar arquivos temporários de makefile e incluímos esses arquivos no nosso makefile. Dessa forma, sabemos exatamente quais são todas as dependências para gerar um arquivo .o.

### Conclusão
Depois de todas essas alterações, conseguimos um makefile bastante completo e genérico. Podemos incluir novos arquivos de código-fonte facilmente no projeto sem a necessidade de alterar o nosso makefile para compilar apenas os arquivos necessários.

Todo este conteúdo foi baseado no tutorial criado por Darcamo. Fica aqui os meus sincero agradecimentos para ele, já que só consegui aprender a utilizar o makefile utilizando o seu tutorial. Obrigado!

Link do tutorial de Darcamo:
https://ubuntuforum-pt.org/index.php?topic=21155.0