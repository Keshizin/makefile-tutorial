# MAKEFILE TUTORIAL
O objetivo deste projeto é criar um makefile genérico que atenda a maioria dos projetos com o mínimo de modificações.
Este makefile foi baseado no tutorial criado por Darcamo (usuário do fórum do Ubuntu, 2007). Realizei algumas alterações em relação a estrutura de diretórios do projeto para deixar mais organizado.

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
O projeto é compilado sem o uso de nenhum makefile. Ou seja, foi utilizado o comando de compilação (GCC) diretamente no terminal.

`g++ source/source_code_1.cpp source/source_code_2.cpp source/main.cpp -Iinclude -o bin/teste.exe -Wall`

##### Segundo commit
Criado o primeiro makefile. O comando de compilação utilizado anteriormente é simplesmente copiado no arquivo makefile. Ainda não foi utilizado todo o poder que o make oferece para construir programas.

##### Terceiro commit
Incluindo as dependências no makefile. Esta funcionalidade garante que o make possa compilar apenas os arquivos necessários.

##### Quarto commit
No quarto commit, foram incluídas as variáveis no makefile para evitar repetições como os nomes de diretórios. Se houver a necessidade de mudar o nome de algum diretório, o makefile pode ser facilmente modificando alterando apenas a sua variável.

##### Quinto commit
Conforme o projeto vai crescendo, é necessário adicionar novos arquivos de código-fonte ou outras bibliotecas. O makefile foi alterado novamente para que ele possa incluir novos arquivos e criar novas depedências de forma automática.

##### Sexto commit
No estado atual, o make não consegue identificar as alterações feitas nos headers de forma automática. A flag -MM do comando GCC permite identificar todas as dependências (incluindo os headers) para criar um código-objeto. Um novo target foi criado no makefile para criar arquivos temporários de makefile (resultado do comando GCC utilizando a flag -MM). Estes arquivos temporários são incluídos de forma automática no makefile. Assim, o make consegue identificar exatamente quais são todas as dependências para gerar um arquivo .o.

### Conclusão
O resultado final depois de todas esas alterações é um makefile bastante completo e genérico ao mesmo tempo. Novos arquivos de código-fonte podem ser facilmente adicionados no projeto sem a necessidade de alterar o makefile.

Todo este conteúdo foi baseado no tutorial criado por Darcamo. Fica aqui os meus sincero agradecimentos para ele, já que só consegui aprender a utilizar o makefile utilizando o seu tutorial. Obrigado!

Link do tutorial de Darcamo:
https://ubuntuforum-pt.org/index.php?topic=21155.0
