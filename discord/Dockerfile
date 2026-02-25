FROM python:3.12-slim

WORKDIR /app

# Le contexte de build est le dossier racine du projet
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code commun "app" pour pouvoir faire `from app.core.config import settings`
COPY app/ ./app

# Copier le code Discord (ingestor, backfill, etc.) dans /app/pendules_discord
COPY discord/ ./pendules_discord

RUN mkdir -p /app/data

# Script d'entrée
COPY discord/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]