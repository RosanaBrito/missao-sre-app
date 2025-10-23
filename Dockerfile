# 1. Imagem Base: 
FROM python:3.10-slim

# 2. Diretório de Trabalho: Define onde nossos comandos rodarão dentro do container
WORKDIR /app

# 3. Copiar arquivos: Copia os arquivos de requisitos para dentro do container
COPY requirements.txt .

# 4. Instalar Dependências: Roda o pip para instalar o Flask
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar Código: Copia o resto do código da nossa aplicação
COPY . .

# 6. Expor Porta: Informa ao Docker que o container vai "ouvir" na porta 5000
EXPOSE 5000

# 7. Comando de Execução: O comando para iniciar a aplicação quando o container subir
CMD ["python", "app.py"]



#Conceito (FROM, RUN, CMD):
#FROM define a base. 
#RUN executa comandos durante a construção da imagem (ex: instalar coisas). 
#CMD define o comando que será executado quando o container iniciar.
