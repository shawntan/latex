\ProvidesClass{presentation}[2012/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{beamer}%
}
\ProcessOptions\relax
\LoadClass{beamer}


%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}

\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{darkgray}
  \colorlet{header}{white}
\fi
\colorlet{textcolor}{black}
\colorlet{headercolor}{gray}

%%%%%%%%%
% Fonts %
%%%%%%%%%

\RequirePackage[quiet]{fontspec}
%\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}

\newfontfamily\bodyfont[]{Helvetica Neue}
\newfontfamily\thinfont[]{Helvetica Neue UltraLight}
\newfontfamily\headingfont[]{Helvetica Neue Condensed Bold}
\defaultfontfeatures{Mapping=tex-text}
%\setsansfont[Mapping=tex-text, Color=textcolor]{Helvetica Neue Light}
\setsansfont{Helvetica Neue Light}
%\setmathfont{XITS Math}
%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{12pt}{20pt}\selectfont%
  \thinfont%
  \color{white}%
}



%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%
%\RequirePackage{parskip}

%\pagestyle{empty}


%%%%%%%%%%%%%%%%%%%%
% List environment %
%%%%%%%%%%%%%%%%%%%%

\renewcommand{\bfseries}{\headingfont\color{headercolor}}
\newcommand{\entry}[4]{%
  #1&\parbox[t]{11.8cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=lightgray} #3}\\%
    #4\vspace{\parsep}%
  }\\}


%%%%%%%%%%%%%%
% Side block %
%%%%%%%%%%%%%%

%%%%%%%%%%%%%
% Math mods %
%%%%%%%%%%%%%
\RequirePackage{amsmath}

%Function
\newcommand{\fun}[2]{\,#1\!\left(#2\right)}

%Probability

\DeclareDocumentCommand\P{ m g }{%
	{%
		\fun{p}{#1 \IfNoValueF {#2} {\,\middle|\, #2}}%
	}%
}

%Conditional independence
\newcommand{\CI}[3]{\left.\left. #1 \perp #2 \right. \:\middle|\:#3\right.}


%%%%%%%%%%%%%%
% Table mods %
%%%%%%%%%%%%%%
\RequirePackage{tabularx}
\setlength{\tabcolsep}{.2em}

%%%%%%%%%%%%%%%%
% Other tweaks %
%%%%%%%%%%%%%%%%

