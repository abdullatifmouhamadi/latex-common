\listfiles
\def\fileversion{1.4}
\def\filedate{2019/05/26}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{dossiers}[%
  \filedate\space v\fileversion\space
  dossiers document class. Mouhamadi ABDULLATIF]
%
% MAJ du 2013/06/12 : rectification de la déclaration de l'option "inputenc"
% MAJ du 2013/08/18 : rectification de la déclaration de l'option utf8 (il manquait le "8" dans "DeclareOption"
% MAJ du 2016/05/08 : changement d'ordre de l'appel des packages "numpprint" et "babel", création de la commande \breakbox
% MAJ du 2016/09/07 : corrrection du bug concernant la disposition des exos/corrigés + création des commandes \DefineNewBoxLikeDef et \DefineNewBoxLikeRem
% MAJ du 2019/05/24 : ajout de la commande \BreakCorr pour couper le corrigé d'un exercice
%

\newif\if@ams
\newif\if@openany
\newif\if@dixpt
\newif\if@onzept
\newif\if@douzept
\newif\if@presentation
\newif\if@latinone
\newif\if@ansinew
\newif\if@applemac
\newif\if@ascii
\newif\if@latinnine
\newif\if@utfheight

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Options de classes %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
% encodage
\DeclareOption{latin1}{\def\inputoption{latin1}}
\DeclareOption{ansinew}{\def\inputoption{ansinew}}
\DeclareOption{applemac}{\def\inputoption{applemac}}
\DeclareOption{ascii}{\def\inputoption{ascii}}
\DeclareOption{latin9}{\def\inputoption{latin9}}
\DeclareOption{utf8}{\def\inputoption{utf8}}
%
\DeclareOption{openany}{\@openanytrue}
\DeclareOption{10pt}{\@dixpttrue}
\DeclareOption{11pt}{\@onzepttrue}
\DeclareOption{12pt}{\@douzepttrue}
\DeclareOption{ams}{\@amstrue}
\DeclareOption{presentation}{\@presentationtrue}

\ProcessOptions

\xdef\optionsbook{a4paper}
\if@openany
	\xdef\optionsbook{\optionsbook,openany}
\fi
\if@dixpt
	\xdef\optionsbook{\optionsbook,10pt}
\else
	\if@onzept
		\xdef\optionsbook{\optionsbook,11pt}
	\else
		\if@douzept
			\xdef\optionsbook{\optionsbook,12pt}
		\fi
	\fi
\fi

\LoadClass[\optionsbook]{report}
%
%%%%%%%%%%%%%%%%%
%%% Packages  %%%
%%%%%%%%%%%%%%%%%
%
%\RequirePackage[\inputoption]{inputenc} --desactivé car clash sur la dernière mise à jour latex
\RequirePackage[T1]{fontenc}
\RequirePackage{cellspace}
%\RequirePackage[cmyk,table]{xcolor} 
%\RequirePackage{kpfonts} % mouha
\RequirePackage{titlesec}
%\RequirePackage[explicit]{titlesec} % mouha
\RequirePackage{titletoc} % mouha
\RequirePackage{lastpage} % mouha
\RequirePackage{tikz}
\usetikzlibrary{calc,decorations.pathmorphing,decorations.text}
%\RequirePackage[tmargin=2cm,bmargin=2.5cm,hmargin=2cm]{geometry} original
\RequirePackage[tmargin=1.5cm,bmargin=2cm,hmargin=1cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{eso-pic}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{fancyvrb}
\RequirePackage{verbatim}
\RequirePackage{multido}
\RequirePackage{multicol}
\RequirePackage{fp}
%\input{common/themes/electronicbook/colors}
\RequirePackage[colorlinks=true,linkcolor=corref@color]{hyperref}
\if@ams
	\RequirePackage{amsmath,amsfonts,amssymb}
\fi
\RequirePackage[french]{babel}
\frenchbsetup{StandardLists=true}
\RequirePackage[autolanguage]{numprint} 
%
\input{common/themes/dossiers/lengths}
%\input{common/themes/electronicbook/fonts}
%\input{common/themes/electronicbook/pagestyles}
%\input{common/themes/electronicbook/sectionstyles}
%\input{common/themes/dossiers/commandes}
\input{common/themes/common/commandes}
\endinput
