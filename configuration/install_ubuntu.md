# Installer Ubuntu

- [Installer Ubuntu](#installer-ubuntu)
  - [Installer Ubuntu sur windows](#installer-ubuntu-sur-windows)
  - [Configuration d'ubuntu](#configuration-dubuntu)
  

## Installer Ubuntu sur windows

Ouvrir Windows PowerShell (ou autre terminal windows) en tant qu'administrateur et exécuter la
commande suivante dans le terminal :
```c
wsl --install -d ubuntu
```
Une fois l'installation terminée, pour que WSL et ubuntu fonctionne, il faut redémarrer le PC.

## Configuration d'ubuntu
Pour utiliser ubuntu, ouvrir le Windows Terminal Preview et choisir ubuntu.

A la première utilisation d'ubuntu, il sera demander de choisir un nom d'utilisateur et un mot de passe.

Une fois qu'ils ont été choisis, exécuter ces 2 commandes pour être sûr d'avoir les dernières versions :
```c
sudo apt update
sudo apt upgrade
```

