% spell-checker: disable
% spellchecker: disable
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style/score}[Lewis Wolstanholme Compositions]
\LoadClass{report}

% Packages
\RequirePackage[margin=2cm]{geometry}
\RequirePackage{fontspec}								% font encoding
\RequirePackage[english]{babel}							% use this to add extra languages
\RequirePackage{amssymb}								% maths
\RequirePackage{mathtools}				  				% maths
\RequirePackage{musicography}							% simple music symbols
\RequirePackage[none]{hyphenat}			 				% less word breaks more kerning
\RequirePackage[skip=\baselineskip,indent=0pt]{parskip}	% paragraph skip formatting
\RequirePackage[absolute,overlay]{textpos}				% absolute text positioning
\RequirePackage{enumitem}								% list formatting
\RequirePackage[hidelinks]{hyperref}					% makes things clickable
\RequirePackage{graphicx}								% import images with \includegraphics{filepath}
\RequirePackage{pdfpages}								% include pdfs with \includepdf{link}

% Title Page Configuration
\makeatletter%
	\renewcommand*{\title}[1]{\gdef\@title{%
		#1
	}}
	\newcommand*{\composer}[1]{\gdef\@composer{%
		\hypersetup{pdfauthor={#1}}
		#1
	}}
	\newcommand*{\instrumentation}[1]{\gdef\@instrumentation{%
		\hypersetup{pdfsubject={#1}}
		#1
	}}
\makeatother

% default list format
\setlist{nosep}

% macro for creating an empty page
\newcommand*{\emptypage}{%
	\newpage
    \null
    \thispagestyle{empty}
    \addtocounter{page}{-1}
    \newpage
}

% Credits in PDF Metadata
\AtBeginDocument{%
	\hypersetup{pdfcreator={Lewis Wolstanholme's Personal LaTeX Template}}
}
