#!/usr/bin/env bash
set -e

echo "[entrypoint] Lancement du backfill Discord..."
python -m discord.backfill

echo "[entrypoint] Backfill terminé, démarrage de l'ingestor Discord..."
python -m discord.ingestor
