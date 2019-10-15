\ProvidesClass{TOREngReport}[2019/10/13 Class for engineering reports]
\NeedsTeXFormat{LaTeX2e}
%% Article options
\DeclareOption{10pt}{\PassOptionsToClass{\CurrentOption}{article}}
%\DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{article}}
%\DeclareOption{authors}{\let\@author{authors}}
\DeclareOption{title}{\let\@title{title}}
%\DeclareOption{subject}{\let\@subject{subject}}
%\DeclareOption{keywords}{\let\@keywords{keywords}}
%\DeclareOption{institution}{\let\@institution{institution}}
%\DeclareOption*{
%\ClassWarning{TOREngReport}{Unknown option '\CurrentOption'}
%}
%\ExecuteOptions{10pt}
\ProcessOptions*
\LoadClass{article}
%\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setlength{\textwidth}{280mm}
\setlength{\textheight}{193mm}

\RequirePackage[utf8]{inputenc}
\RequirePackage[a4paper,margin=2cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
%\RequirePackage[french]{babel}
\RequirePackage{graphicx, wrapfig, subcaption, setspace, booktabs, natbib, url, lipsum}
\RequirePackage[T1]{fontenc}
\RequirePackage[font=small, labelfont=bf]{caption}
\RequirePackage{fourier}
\RequirePackage[protrusion=true, expansion=true]{microtype}
\RequirePackage{sectsty}
\RequirePackage{flafter}
\RequirePackage{algorithm}


\title{\@title}
%\RequirePackage[hidelinks,pdftex,backref,
%pdfauthor=\@authors,
%pdftitle=\@title,
%pdfsubject=\@subject,
%pdfkeywords=\@keywords,
%pdfproducer={Latex with hyperref},
%pdfcreator={pdflatex}]{hyperref}

\RequirePackage{listings,xcolor,algorithmicx, algpseudocode, amsmath, amssymb}

% Code listings
\RequirePackage[newfloat]{minted}
\usemintedstyle{tango}
\setminted{
linenos,
frame=lines,
escapeinside=||,
mathescape=true
}
\lstset{
basicstyle=\ttfamily\small,
numberstyle=\footnotesize,
numbers=left,
backgroundcolor=\color{gray!10},
frame=single,
tabsize=2,
rulecolor=\color{black!30},
title=\lstname,
escapeinside={*(}{*)},
mathescape=true,
breaklines=true,
postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},
breakatwhitespace=true,
framextopmargin=2pt,
framexbottommargin=2pt,
inputencoding=utf8,
extendedchars=true,
literate={á}{{\'a}}1 {è}{{\`e}}1 {é}{{\'e}}1,
captionpos=b}
%\lstset{language=C++}
%\graphicspath{ {./images/} }


\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}
\onehalfspacing
\setcounter{tocdepth}{5}
\setcounter{secnumdepth}{5}

% Reference formatting
\def\sectionautorefname{\S}
\def\subsectionautorefname{\S}
\def\subsubsectionautorefname{\S}
\def\algorithmautorefname{Algorithm}

% Counter formatting
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}

%-------------------------------------------------------------------------------
% HEADER & FOOTER
%-------------------------------------------------------------------------------
\pagestyle{fancy}
%\fancyhf{}
\setlength\headheight{15pt}
\fancyhead[L]{\subject}
\fancyhead[R]{\institution}
%\fancyfoot[R]{Page \thepage\ of \pageref{LastPage}}

\endinput