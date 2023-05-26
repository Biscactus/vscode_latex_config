# Configuration de GitHub
- [Configuration de GitHub](#configuration-de-github)
  - [Configuration de Git](#configuration-de-git)
  - [Identité SSH](#identité-ssh)
  - [GitHub](#github)
    - [Créer un compte](#créer-un-compte)
    - [Travailler en groupe](#travailler-en-groupe)

## Configuration de Git
Pour configurer votre identité, exécutez depuis un terminal Ubuntu puis les commandes suivantes en remplaçant par vos nom et prénom et votre adresse email :
```c
git config --global user.name "Prénom Nom"
git config --global user.email example@gmail.com
```
## Identité SSH
Maintenant que votre identité est saisie, nous souhaitons créer une clé SSH.
Pour créer la clé, utiliser simplement la commande:
```c
ssh-keygen
```
Utilisez toutes les valeurs par défaut (c’est-à-dire appuyez sur <Enter> jusqu’à la fin du programme). Laisser la passphrase (phrase secrète) vide.

Pour consulter la clé publique :
```c
cat ~/.ssh/id_rsa.pub
```
## GitHub
### Créer un compte
1. Allez sur GitHub
2. Sélectionnez Sign Up et créer un compte GitHub
3. Choisissez un username

Déploiement de votre clé publique :
1. Avoir sous la main la clé public de la forme:
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3RiOdvxC/+qW0IDpb0UGPFgFOMqKLzzJ
MxRLNbRN2QIcCvLbLUI0UmzOYvLoawXtmv3W3N+kvVCKc/ED+hAOorx1P2ZaFbyzim6PjBU
0tBGKWZoN5DsMfy4xo7h1IO5uugFjC7KyDLfCUk+1gAuiDDYy2hLZn+Agfh9oG6YONVEYDX+OZeNK0UhwNahZxjwAa349VT4FmVWlSyVX0c2ZlwEUogXfKrM3IFjH+bqOwKCWL1BjNdi/geJ9tlRTiy4lpa5AWrdHCpz7NuBfXbaMjEjgH doc@hill-valley
1. Se rendre sur GitHub dans préférences puis dans l’onglet SSH and
GPG keys.
1. Ajoutez une nouvelle clé SSH avec New SSH key.
2. Copier/coller votre clé publique.

### Travailler en groupe
Il est possible de travailler en groupe sur GitHub. Pour ce faire, il faut commencer par créer sa branche dans le projet sur lequel vous travailler :
```c
git branch nom-de-la-branche
```
Faire toutes les modifications en vérifiant bien que c'est dans la branche et non pas le master.
Une fois que les changements dans la branche ont été commits et push, pour merge la branche, exécuter dans le terminal dans vscode :
```c
git pull origin master 
```
 Résoudre les conflits dans vscode.

Une fois les conflits résolus, aller sur GitHub et faire un pull request. Si les conflits ont bien été résolus, le merge peut se faire automatiquement.


