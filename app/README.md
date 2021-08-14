# Sistema de Recomendação e Classificação de Textos - API

Nesse API podemos fazer duas coisas:

1 - Recomendar textos baseado em três categorias. (Sports, Technology, Politics)
2 - Classificar textos também de acordo com as mesmas três categorias.

Vamos observar que tanto o dataset, quanto os textos que foram usados para esse API são pequenos, a ideia principal é analisar a possibilidade que temos para trabalhar com um sistema de recomendação e classificação de textos.

Com essa idéia, podemos trabalhar tanto datasets maiores, como com textos mais abstratos, maiores e com mais categorias.


### Rotas

Todas as rotas são acessível por botões na página.

```/usuario:``` (botão "Usuário") Cria um usuário com o nome inserido, caso o usuário já exista no sistema, ele é detectado. 

```/recomen:``` (botão "Buscar texto") Recomenda um texto de acordo com o tema inserido pelo usuário, que pode ser 'sports', 'technology' ou 'politics'.

```/avali:``` (Botão "Avaliar") O usuário avalia o texto recomendado pelo sistema com uma nota de 0 até 5, essa nota, é acrescentada na coluna no texto na tabela usuário-item.
    Exemplo: se o texto que o sistema recomendou foi o de número 25 do dataset, e esse texto vou avaliado com nota 5, a nota 5 é acrescentada na tabela usuário-item na linha do usuário e na coluna de número 25. 


```/classifi:``` (botão "Classificação") O usuário é redirecionado para o modelo de classificação de textos.

```/predict:``` (botão "Classificar") Classifica o texto inserido pelo usuário como sendo um texto sobre esportes, tecnologia ou politica.

```/tabela:``` (botão "Visualizar tabela Usuário-Item") Visualiza a tabela de usuários com a suas respectivas notas dadas aos textos que foram lidos.

