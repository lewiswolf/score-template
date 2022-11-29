% spell-checker: disable
% spellchecker: disable
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style/score}[Lewis Wolstanholme Compositions]
\LoadClass{report}

% Packages
\RequirePackage[margin=2cm]{geometry}
\RequirePackage[utf8]{inputenc}			 	% ASCII encoding
\RequirePackage[english]{babel}				% use this to add extra languages
\RequirePackage[T1]{fontenc}				% font encoding
\RequirePackage{lmodern}					% default font
\RequirePackage{amssymb}					% maths
\RequirePackage{mathtools}				  	% maths
\RequirePackage[none]{hyphenat}			 	% less word breaks more kerning
\RequirePackage{graphicx}					% import images with \includegraphics{filepath}
\RequirePackage{pdfpages}					% include pdfs with \includepdf{link}
\RequirePackage[absolute,overlay]{textpos}	% absolute text positioning

\newcommand*{\emptypage}{%
	\newpage
    \null
    \thispagestyle{empty}
    \addtocounter{page}{-1}
    \newpage
}
