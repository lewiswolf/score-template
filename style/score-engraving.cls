% spell-checker: disable
% spellchecker: disable
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style/score-engraving}[Lewis Wolstanholme Engravings]

% Paper Size
\newcommand*{\PaperSize}{a4paper}
\newcommand*{\TextSizeMultiplier}{0}
\DeclareOption{a4paper}{%
	\renewcommand*{\PaperSize}{a4paper}
}
\DeclareOption{a3paper}{%
	\renewcommand*{\PaperSize}{a3paper}
}

% Paper Orientation
\newcommand*{\PaperOrientation}{portrait}
\DeclareOption{landscape}{\renewcommand*{\PaperSize}{landscape}}

% Load Parent
\ProcessOptions\relax
\LoadClass[\PaperSize, \PaperOrientation]{style/score}

% Default Font
\setmainfont{Tinos}

% Cover Colours
\newcommand*{\CoverBackground}{white}
\newcommand*{\CoverForeground}{black}

\makeatletter%
	% Arranger
	\newcommand*{\arranger}[1]{\gdef\@arranger{%
		\hypersetup{pdftitle={#1}}
		#1
	}}
	% Title Styles
	\renewcommand*{\maketitle}{%
		% page style
		\thispagestyle{empty}
		\setcounter{page}{0}
		\setlength{\parindent}{0pt}
		\setlength{\parindent}{0pt}
		% margins
		\newgeometry{top=0pt, right=0pt, left=0pt, bottom=0pt}
		% colour
		\pagecolor{\CoverBackground}

		% composer
		\begin{textblock*}{0.8\paperwidth}(0.1\paperwidth,0.125\paperheight - 10pt)
			\fontsize{40pt}{0}
			\bfseries \@composer
		\end{textblock*}
		
		% title
		\begin{textblock*}{0.6\paperwidth}[0,1](0.3\paperwidth, 0.4\paperheight - 32pt)
			\fontsize{32pt}{0}
			\bfseries \openup 0.25em \raggedright \@title
		\end{textblock*}

		% line 1
		\begin{textblock*}{0.6\paperwidth}(0.3\paperwidth,0.4\paperheight - 2pt)
			\noindent\rule{\textwidth}{4pt}
		\end{textblock*}

		% instrumentation
		\begin{textblock*}{0.6\paperwidth}(0.3\paperwidth, 0.4\paperheight + 32pt)
			\fontsize{20pt}{0}
			\it \bfseries \openup 0.25em \raggedright \@instrumentation
		\end{textblock*}

		% arranger
		\ifx\@arranger\undefined
		\else
			\begin{textblock*}{0.6\paperwidth}[0,1](0.3\paperwidth, 0.6\paperheight - 32pt)
				\fontsize{18pt}{0}
				\it \openup 0.25em \raggedright arranged by\@arranger
			\end{textblock*}
		\fi

		% line 
		\begin{textblock*}{0.6\paperwidth}(0.3\paperwidth,0.6\paperheight - 2pt)
			\noindent\rule{\textwidth}{4pt}
		\end{textblock*}
		
		% date
		\begin{textblock*}{0.5\paperwidth}(0.3\paperwidth, 0.6\paperheight + 32pt)
			\fontsize{16pt}{0}
			\bfseries \openup 0.25em \@date
		\end{textblock*}

		% reset
		\cleardoublepage{}
		\restoregeometry
		\normalsize
		\null
	}
\makeatother

% Final Page
\newcommand*{\finalpage}{%
	\null
	\thispagestyle{empty}
	\pagecolor{\CoverBackground}
	\addtocounter{page}{-1}
	\newpage
}
