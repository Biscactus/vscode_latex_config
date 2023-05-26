# Installer latex dans VScode

Installer les extensions : 
- LaTeX Workshop
- LTeX - LanguageTool grammar/spell checking

Pour pouvoir compiler le document en pdf, il faut installer texlive sur ubuntu avec les commandes suivantes : 
```c
sudo apt update  
sudo apt install texlive-full 
```
Pour pouvoir écrire en LaTeX, il faut avoir le fichier settings.json de ce repository. Il est possible de le copier dans les settings généraux de vscode ou simplement inclure le fichier dans chaque nouveau projet.
