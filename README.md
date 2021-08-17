# Projeto Reconhecimento de emoções pela captura da WebCam :camera:

### Projeto concluído. Para testar o API, baixe a pasta app do repositório e execute o comando `python app.py` do pront de comando no diretório do app

[Download do Dataset](https://www.kaggle.com/msambare/fer2013)

Nesse projeto, trabalhamos com detecção de emoções, onde criamos modelos de machine learning que conseguem detectar entre sete emoções diferentes, são elas:

- 0: Zangado
 - 1: Nojo 
 - 2: Medo 
 - 3: Feliz
 - 4: Natural
 - 5: Triste
 - 6: Surpresa

No notebook todo o processo feito para tal é explicado com todos os detalhes, desde o processamento das fotos, passando pela criação e treinamento das redes neurais, finalizando com a criação das funções preditoras e explicação de como podemos fazer o API para detectar essas emoções usando nossa própria WebCam.

Além do notebook, temos um API pronto para ser testado localmente, executado-o, o algoritmo abre a sua WebCam e detecta todas as emoções, independente da quantidade de pessoas que estejam na imagem, em tempo real.

Também temos a biblioteca1.py que ta com a  classe de processamento de imagens e duas funções de predição salvas, que podem nos ajudar em futuros projetos.

## Ideias para aplicações.

A primeira ideia para usarmos esse projeto, é em contato com uma equipe de desenvolvedores, colocar o API em um webservice para usuários testarem diretamente por um site.

Uma outra ideia seria criar também webservice um serviço de criação de avatar, onde o usuário criaria seu avatar e com o detector de emoções, o avatar viraria emojis para o usuário.

Além disso, também podemos criar um banco de dados, e o usuário teria a opção de abastecer esse banco de dados enviando uma foto com uma das emoções escolhidas, assim, no podemos depois retreinar o modelo, afim de obter uma melhor acurácia.

Outra ideia possível é levar o projeto em outro nível, trabalhar do zero com os dados de treino, pegando não as imagens dos rostos, e sim as imagens das micro expressões de cada foto, e pensar na possibilidade de treinar as redes neurais com essas micro expressões, para conseguir fazer um estudo mais aprofundado sobre a detecção de expressões e emoções

Essas são apenas algumas das muitas ideias e possibilidades que podemos ter com esse projeto e API



## Performance do modelos.

Para esse trabalho, criamos quatro redes neurais, todos os modelos foram salvos, as métrica deles foram:

- Primeiro modelo: Acurácia em treino: 70%, acurácia em teste: 43%
- Segundo modelo: Acurácia em treino: 84%, acurácia em teste: 54%
- Terceiro modelo: Acurácia em treino: 77%, acurácia em teste: 56%
- Quarto modelo: Acurácia em treino: 74%, acurácia em teste: 53%

Dos quatro modelos, escolhemos o terceiro, pois este teve uma melhor acurácia em dados de teste, com uma diferença menor em relação aos dados de treino.

Apenas de teoricamente os valores não estarem tão altos, temos que lembrar que estamos com sete categorias, e de maneira aleatória teríamos por volta de 14% de acurácia, portanto temos um ótimo resultado.
