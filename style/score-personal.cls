% spell-checker: disable
% spellchecker: disable
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style/score-personal}[Lewis Wolstanholme Compositions]

% Layout Specific Packages
\RequirePackage{xcolor}						% change font color with \textcolor{color}{text}
\RequirePackage[scaled=1]{helvet}			% helvetica
\RequirePackage{tikz}						% drawing graphics

% Paper Size
\newcommand*{\PaperSize}{a4paper}
\DeclareOption{a4paper}{\renewcommand*{\PaperSize}{a4paper}}
\DeclareOption{a3paper}{\renewcommand*{\PaperSize}{a3paper}}
% Paper Orientation
\newcommand*{\PaperOrientation}{portrait}
\DeclareOption{landscape}{\renewcommand*{\PaperSize}{landscape}}
% Cover Colours
\definecolor{off_black}{RGB}{34, 34, 34}
\newcommand*{\CoverBackground}{off_black}
\newcommand*{\CoverForeground}{white}
\DeclareOption{part}{%
	\renewcommand*{\CoverBackground}{white}
	\renewcommand*{\CoverForeground}{black}
}

% Load Parent
\ProcessOptions\relax
\LoadClass[\PaperSize, \PaperOrientation]{style/score}

% Default Font
\renewcommand*{\familydefault}{\sfdefault}

% Squares
\newcommand*\squares{%
	\begin{tikzpicture}[overlay]
		\draw[\CoverForeground, ultra thick](0.5\paperwidth - 63mm,-0.5\paperheight - 63mm) rectangle (0.5\paperwidth + 58.5mm,-0.5\paperheight + 58.5mm);
		\draw[\CoverForeground, ultra thick](0.5\paperwidth - 58.5mm,-0.5\paperheight - 58.5mm) rectangle (0.5\paperwidth + 63mm,-0.5\paperheight + 63mm);
		% Guides
		% \draw[red, ultra thin](0, 2pt) rectangle (\paperwidth + 1cm,-1\paperheight);															% page border
		% \draw[red, ultra thick](0.5\paperwidth - 63mm,-0.5\paperheight - 63mm) rectangle (0.5\paperwidth + 63mm,-0.5\paperheight + 63mm);		% box border
		% \draw[blue, ultra thick](0.5\paperwidth - 54mm,-0.5\paperheight - 54mm) rectangle (0.5\paperwidth + 54mm,-0.5\paperheight + 54mm);	% text border
		% \draw[red, ultra thick](0.5\paperwidth - 1.pt,-0.5\paperheight - 1.pt) rectangle (0.5\paperwidth + 1.pt,-0.5\paperheight + 1.pt);		% center
	\end{tikzpicture}
}

% Title Styles
\makeatletter%
	\newcommand*{\composer}[1]{\gdef\@composer{%
		#1
	}}
	\newcommand*{\instrumentation}[1]{\gdef\@instrumentation{%
		#1
	}}
	\renewcommand*{\maketitle}{%
		% page style
		\thispagestyle{empty}
		\setcounter{page}{0}
		\setlength{\parindent}{0pt}
		% margins
		\newgeometry{top=-8pt, right=0pt, left=0pt, bottom=0pt}
		% colour & shapes
		\pagecolor{\CoverBackground}
		\color{\CoverForeground}
		\squares
		% composer
		\begin{textblock*}{127mm + 1.2pt}(0.5\paperwidth - 63mm - 3pt,0.1\paperheight + 2pt)
			\fontsize{37.18pt}{0}
			\bf \@composer
		\end{textblock*}
		% title
		\begin{textblock*}{104mm}(0.5\paperwidth - 52mm - 7pt,0.5\paperheight - 52mm - 3.5pt)
			\fontsize{32pt}{0}
			\bf \@title
		\end{textblock*}
		% instrumentation
		\begin{textblock*}{104mm + 14pt}(0.5\paperwidth - 52mm - 6.5pt, 0.5\paperheight - 12.5pt)
			\fontsize{16.75pt}{0}
			\bf \openup 0.25em \@instrumentation
		\end{textblock*}
		% date
		\begin{textblock*}{104mm + 7pt}(0.5\paperwidth - 52mm,0.5\paperheight + 52mm - 14.5pt)
			\fontsize{14pt}{0}
			\flushright \bf \@date
		\end{textblock*}
		% reset
		\cleardoublepage{}
		\restoregeometry
		\pagecolor{white}
		\color{black}
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
