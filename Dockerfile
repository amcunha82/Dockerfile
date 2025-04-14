FROM python:3.11-slim

# Instala o Tor e dependências
RUN apt-get update && apt-get install -y tor curl && \
    pip install requests beautifulsoup4

# Copia o código
WORKDIR /app
COPY . .

# Inicia o Tor e o app
CMD tor & python main.py
