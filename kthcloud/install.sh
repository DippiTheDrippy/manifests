#!/usr/bin/env bash
set -euo pipefail

LAYERS=(
  "kthcloud"
)

for layer in "${LAYERS[@]}"; do
  echo "Applying ${layer}"
  until kustomize build "$layer" | kubectl apply --server-side --force-conflicts -f -; do
    echo "Retrying ${layer}"
    sleep 20
  done
done