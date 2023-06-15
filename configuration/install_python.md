# Installer python

Pour installer python sur ubuntu, exécuter la commande suivante dans le 
terminal :
```c
sudo apt install python3
```
Pour l'Utilisation avec VS Code, il faut préciser quel python doit être appelé par défaut.
Pour ce faire, entrez la commande suivante :
```c
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
```
Vous avez maintenant une version de python par défaut que vous pouvez vérifier avec :
```c
python -V
```
Si la version de python s'affiche, vous pouvez maintenant utiliser pythonthex en suivant l'exemple dans le main.tex.
Attention pour que ça fonctionne, vérifier que le settings.json est le même que celui dans ce repository.

Il est possible qu'il faille aussi installer pygments pour que pythontex fonctionne :
```c
pip install Pygments
```
Si pip n'est pas intallé :
```c
sudo apt install python3-pip
```
Et refaire la commande pour installer pygments.
