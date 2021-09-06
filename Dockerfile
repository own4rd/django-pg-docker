# Imagem Base
FROM python:3.8.10

# Variáveis Ambiente -> 1: Não gerar .pyc 2: Msg de log não armazenar em buffer
ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONUNBUFFERED 1

# Dir de trabalho
WORKDIR /code

# Copiar requirements e jogar no /code e Execurar a instalação do requirements.txt
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiar tudo que está no local para parte /code
COPY . .