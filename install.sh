#!/bin/bash

# Ajout des référentiels (repositories) pour OpenJDK
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt update

# Mise à jour du système
sudo apt upgrade -y

# Installation du JDK et du JRE 21 (ou une version plus récente si disponible)
sudo apt install openjdk-21-jdk openjdk-21-jre -y

# Vérification de l'installation
java_version=$(java -version 2>&1 | grep version | awk '{print $3}')
if [[ "$java_version" == "21" ]]; then
    echo "Installation du JDK et du JRE 21 terminée avec succès."
else
    echo "L'installation a rencontré des problèmes. Veuillez vérifier le système."
fi
