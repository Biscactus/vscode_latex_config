\LoadClass[a4paper,12pt]{article} % Classe du document
\setlength{\parindent}{0cm}
%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page


%-------------------- Informations sur le rapport ----------------------

\newcommand{\cours}[1]{\renewcommand{\cours}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\unif}[1]{\renewcommand{\unif}{#1}}
\newcommand{\nom}[1]{\renewcommand{\nom}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}

%--------------------- Header / Footer ----------------------
\lhead{\nom} %Header Left
%\chead{} %Header center
\rhead{\nouppercase{\today}} %Header right
\rfoot{\thepage} %Footer right
\cfoot{\titre} %Footer center
\lfoot{\cours} %Footer left
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

\begin{center}
    \advance\leftskip+1.7cm
	\includegraphics[width=0.4\textwidth]{logos/LogoTitre.png}\par\vspace{1cm} %Insertion du logo
\end{center}

 \centering %Centraliser le contenu
	{\scshape\LARGE \unif \par} %Nom de l'université
	\vspace{1.5cm}%Espace de 1,5cm
	{\scshape\Large \cours \\ \sujet \\ Rapport\par} %sous-titre
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	\vspace{1cm}%Espace de 1cm
    
	\begin{minipage}{0.5\textwidth} %Minipage pour faire deux colonnes
		\begin{flushleft} \large %Envoyer à gauche
		\emph{\textbf{Élèves :}}\\ %Pour le titre au dessus des noms à gauche
        \eleves\\ %Remplacer pour chacun
		\end{flushleft}
	\end{minipage}
	~
	\begin{minipage}{0.4\textwidth}
		\begin{flushright} \large
		\emph{\textbf{Enseignant :}} \\
		 \enseignant \\
		\end{flushright}
	\end{minipage}\\[4cm]
    
	\vfill
	{\large \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[H]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}
