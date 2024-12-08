#!/usr/bin/env bash

# Fonction pour demander à l'utilisateur de deviner le nombre de fichiers
guessing_game() {
  local correct_number=$(ls | wc -l)
  local guess

  # Boucle jusqu'à ce que l'utilisateur devine correctement
  while true; do
    echo "Combien de fichiers y a-t-il dans ce répertoire?"
    read guess

    if [[ $guess -lt $correct_number ]]; then
      echo "Trop bas! Essayez encore."
    elif [[ $guess -gt $correct_number ]]; then
      echo "Trop haut! Essayez encore."
    else
      echo "Bravo! Vous avez deviné correctement."
      break
    fi
  done
}

# Appel de la fonction
guessing_game
