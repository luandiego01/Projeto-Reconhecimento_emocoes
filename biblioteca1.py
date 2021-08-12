import numpy as np
import pandas as pd
import tensorflow as tf
from tensorflow.keras.preprocessing.image import ImageDataGenerator


class ProcessamentoImagensCategorias():
    '''
    Classe para processar imagens organizadas em pastas separas por categórias. 
    '''

    def __init__(self, dir_treino, dir_teste, shape, cores = 3, dici = None):
        '''
        dir_treino: diretório da pasta de treino
        dir_teste: diretório da paste de teste
        shape: dimensão das imagens dos diretório, exemplo (48,48)
        cores: cor da imagem, 1 para preto e branco, 3 para RGB e 4 para RBA.
        '''
    
        self.dir_treino = dir_treino
        self.dir_teste = dir_teste
        self.shape = shape
        self.cores = cores
        self.dici = dici
        
    def gerar_datasets(self, batch = 32):
        '''
        Gera dois datasets do Keras divididos em treino e teste agrupados pelo tamanho do Batchsize escolhido
        
        batch: Batchsize escolhido para o agrupamento nos dados de treino e teste.
        '''
        self.batch = batch
        gerar_datatreino = ImageDataGenerator()
        gerar_datateste = ImageDataGenerator()
        
        if self.cores == 1:
            self.Xtreino = gerar_datatreino.flow_from_directory(directory=dir_treino, 
                                                              target_size=self.shape,
                                                              batch_size= self.batch, color_mode = 'grayscale',
                                                              class_mode='categorical')
            self.Xteste = gerar_datateste.flow_from_directory(directory=dir_teste, 
                                                      target_size=self.shape,
                                                      batch_size= self.batch, color_mode = 'grayscale',
                                                      class_mode='categorical')
        elif self.cores == 3:
            self.Xtreino = gerar_datatreino.flow_from_directory(directory=dir_treino, 
                                                              target_size=self.shape,
                                                              batch_size= self.batch, color_mode = 'rgb',
                                                              class_mode='categorical')
            self.Xteste = gerar_datateste.flow_from_directory(directory=dir_teste, 
                                                      target_size=self.shape,
                                                      batch_size= self.batch, color_mode = 'rgb',
                                                      class_mode='categorical')
        elif self.cores == 4:
            self.Xtreino = gerar_datatreino.flow_from_directory(directory=dir_treino, 
                                                              target_size=self.shape,
                                                              batch_size= self.batch, color_mode = 'rgba',
                                                              class_mode='categorical')
            self.Xteste = gerar_datateste.flow_from_directory(directory=dir_teste, 
                                                      target_size=self.shape,
                                                      batch_size= self.batch, color_mode = 'rgba',
                                                      class_mode='categorical')
        else:
            print("O parametro 'Cores' escolhido na criação do objeto precisa ser 1, 3 ou 4")
                  
    def plotar_batch(self, n):
        '''
        Plota imagens do n-esimo batch escolhido 
        '''
        try:
            if self.dici == None:
                datasetTreino = tf.data.Dataset.from_tensor_slices(self.Xtreino[n])
                listaTreino = list(datasetTreino.as_numpy_iterator())
                plt.figure(figsize=(20, int(self.batch/2)))
                for n1 in range(len(listaTreino)):
                    plt.subplot(int(self.batch/7)+1,7,n1+1)
                    plt.imshow(listaTreino[n1][0],cmap='gray')
                    plt.title(np.argmax(listaTreino[n1][1]))
                plt.show()
            else:
                datasetTreino = tf.data.Dataset.from_tensor_slices(self.Xtreino[n])
                listaTreino = list(datasetTreino.as_numpy_iterator())
                plt.figure(figsize=(20, int(self.batch/2)))
                for n1 in range(len(listaTreino)):
                    plt.subplot(int(self.batch/7)+1,7,n1+1)
                    plt.imshow(listaTreino[n1][0],cmap='gray')
                    plt.title(self.dici[np.argmax(listaTreino[n1][1])])
                plt.show()
        except:         
            print('Você precisa escolher um n entre 0 e ', len(self.Xtreino)-1)
    def criar_csv_e_dataframe_pandas(self, nome_arquivo):
        '''
        Cria um dataset pandas e um arquivo nome_arquivo.csv com as imagens em formato de matriz e com as categorias especificas de cada.
        Além disso cria um dataset com a contagem de todos os elementos agrupados pelas categorias.
        
        dici: Dicionário onde as chaves são as categorias e os valores, os nomes das categorias.
        
        Exemplo, caso o dataset seja um de imagens apenas de gatos e cachorro, crie um dicionário da forma: 
        
        dicionario = {
                0: 'gato'
                1: 'cachorro'
            }
        
        E adicione esse dicionario como parâmetro na variavél dici
        
        Caso o dicionário não seja colocado, a coluna de categorias vira com os valores categóricos de cada uma delas
        '''
        
        self.nome = nome_arquivo
        listaTreino1 = []
        if self.dici == None:
            for item in listaTreino:
                item1 = np.argmax(item[1])
                listaTreino1.append([item[0],item1])

            array = np.array(listaTreino1, dtype = object)
            df_final = pd.DataFrame(array, columns = ['pixels', 'categoria'])

            for n in range(1,len(Xtreino)):
                datasetTreino = tf.data.Dataset.from_tensor_slices(Xtreino[n])
                self.listaTreino = list(datasetTreino.as_numpy_iterator())
                listaTreino2 = []
                for item in self.listaTreino:
                    item1 = np.argmax(item[1])
                    listaTreino2.append([item[0],item1])
                array1 = np.array(listaTreino2, dtype = object)
                df_final1 = pd.DataFrame(array1, columns = ['pixels', 'categoria'])
                df_final = pd.concat([df_final, df_final1])
            self.df_final = df_final
            self.df_contagem = df_count = self.df_final.categoria.value_counts().reset_index().rename(columns={
                                                                    'index': 'Categorias', 
                                                                    'categoria': 'Quantidade'
                                                                    })
            self.df_final.to_csv(self.nome+'.csv')
            print(f"Arquivo {self.nome}.csv criado, utilize os atributos .df_final e .df_contagem para acessar os datasets em formato de pandas e o Dataset com a contagem dos elementos de cada categoria")
        
        else: 
            for item in listaTreino:
                item1 = self.dici[np.argmax(item[1])]
                listaTreino1.append([item[0],item1])

            array = np.array(listaTreino1, dtype = object)
            df_final = pd.DataFrame(array, columns = ['pixels', 'categoria'])

            for n in range(1,len(Xtreino)):
                datasetTreino = tf.data.Dataset.from_tensor_slices(Xtreino[n])
                self.listaTreino = list(datasetTreino.as_numpy_iterator())
                listaTreino2 = []
                for item in self.listaTreino:
                    item1 = self.dici[np.argmax(item[1])]
                    listaTreino2.append([item[0],item1])
                array1 = np.array(listaTreino2, dtype = object)
                df_final1 = pd.DataFrame(array1, columns = ['pixels', 'categoria'])
                df_final = pd.concat([df_final, df_final1])
            self.df_final = df_final
            self.df_contagem = df_count = self.df_final.categoria.value_counts().reset_index().rename(columns={
                                                                    'index': 'Categorias', 
                                                                    'categoria': 'Quantidade'
                                                                    })
            self.df_final.to_csv(self.nome+'.csv')
            print(f"Arquivo {self.nome}.csv criado, utilize os atributos .df_final e .df_contagem para acessar os datasets em formato de pandas e o Dataset com a contagem dos elementos de cada categoria")