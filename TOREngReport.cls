\ProvidesClass{TOREngReport}[2019/10/13 Class for engineering reports]
\NeedsTeXFormat{LaTeX2e}
%% Article options
\DeclareOption{10pt}{\PassOptionsToClass{\CurrentOption}{article}}
%\DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{authors}{\def\@author{authors}}
\DeclareOption{title}{\def\@title{title}}
\DeclareOption{subject}{\def\@subject{subject}}
\DeclareOption{keywords}{\def\@keywords{keywords}}
\DeclareOption{institution}{\def\@institution{institution}}
\DeclareOption*{
	\ClassWarning{TOREngReport}{Unknown option '\CurrentOption'}
}
%\ExecuteOptions{10pt}
\ProcessOptions*
\LoadClass{article}
%\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setlength{\textwidth}{280mm}
\setlength{\textheight}{193mm}

\RequirePackage[utf8]{inputenc}
\RequirePackage[a4paper,margin=2cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{datetime2}
%\RequirePackage{lastpage}
%\RequirePackage[french]{babel}
%\RequirePackage{graphicx, subcaption, setspace, booktabs, url}
\RequirePackage{natbib}
%\RequirePackage{wrapfig}
%\RequirePackage[T1]{fontenc}
%\RequirePackage[font=small, labelfont=bf]{caption}
\RequirePackage{helvet}

\RequirePackage{siunitx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{tikz}
\RequirePackage{tikz-3dplot}
%\RequirePackage[protrusion=true, expansion=true]{microtype}
%\RequirePackage{sectsty}
%\RequirePackage{flafter}
%\RequirePackage{algorithm}
\RequirePackage{booktabs}
%\RequirePackage{listings,xcolor, amssymb}
%\RequirePackage{algorithmicx}

\RequirePackage[hidelinks,pdftex,backref,
%pdfauthor=\@authors,
%pdftitle=\@title,
%pdfsubject=\@subject,
%pdfkeywords=\@keywords,
pdfproducer={Latex with hyperref},
pdfcreator={pdflatex}]{hyperref}

\RequirePackage{cleveref}
%\graphicspath{ {./images/} }


\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}
%\onehalfspacing
\setcounter{tocdepth}{5}
\setcounter{secnumdepth}{5}

% Reference formatting
\def\sectionautorefname{\S}
\def\subsectionautorefname{\S}
\def\subsubsectionautorefname{\S}
\def\algorithmautorefname{Algorithm}
\renewcommand{\ref}[1]{\cref{#1}}


% Counter formatting
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}

% MATHS BITS
\DeclarePairedDelimiter\abs{\lvert}{\rvert}%
\DeclarePairedDelimiter\norm{\lVert}{\rVert}%

% Frames
\DeclareRobustCommand*{\ora}{\overrightarrow}
\newcommand{\Frame}[1]{$\ora{E}$\textsuperscript{#1}}
\newcommand{\mFrame}[1]{\ora{E}^{#1}}
\newcommand{\axis}[2]{\Frame{#1}\textsubscript{#2}}
\newcommand{\maxis}[2]{\mFrame{#1}_{#2}}

% Vectors
\newcommand{\tvec}[1]{$\ora{#1}$}
\newcommand{\mvec}[1]{\ora#1}
\newcommand{\colvec}[1]{\underline{#1}}

% Matrices
\newcommand{\mat}[1]{\textbf{#1}}
\newcommand{\sqmat}[1]{\underline{\underline{#1}}}

\newcommand{\mLabel}[1]{\mbox{$\textstyle{#1}$}}
%-------------------------------------------------------------------------------
% HEADER & FOOTER
%-------------------------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\fancypagestyle{body}{
	\setlength\headheight{15pt}
	\fancyhead[L]{EEEN40010 Control Theory}
	\fancyhead[R]{UCD}
	\fancyfoot[R]{\thepage}
}

%
% TITLE PAGE
%
\renewcommand{\maketitle}[3]{
	\pagenumbering{gobble}
	\begin{titlepage}
		\thispagestyle{plain}
		\centering
		\vspace*\baselineskip
		{\Huge #1}\\
		{\footnotesize #2}\\
		{\small #3}\\
		\vspace*{\baselineskip}
		{\normalsize \DTMtoday}
	\end{titlepage}
	\clearpage
	\pagestyle{body}
	\pagenumbering{roman}
}

%\endinput
