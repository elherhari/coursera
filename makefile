# Variables
README = README.md
SCRIPT = guessinggame.sh

# Cible par défaut
all: $(README)

# Règle pour générer le fichier README.md
$(README):
	@echo "# Guessing Game" > $(README)
	@echo "## Exécuté le: $(shell date)" >> $(README)
	@echo "## Nombre de lignes de code dans $(SCRIPT):" >> $(README)
	@wc -l $(SCRIPT) | awk '{print $$1}' >> $(README)
