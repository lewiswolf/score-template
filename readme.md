# score-template

LaTeX template for making full scores and parts.

# Dependencies

This repository was designed and tested on MacOS, but can be used across other platforms. For MacOS users specifically, the dependencies are:

- [MacTex](https://formulae.brew.sh/cask/mactex-no-gui)

In general, you can work with this project in any editor, purely using the terminal. However, multiple shortcuts have been included in this repository for ease of use alongside [VSCode](https://formulae.brew.sh/cask/visual-studio-code). When you use the project for the first time, VScode will prompt you to install the required extensions.

# Install & Usage

There are two commands packaged with this repository. I recommend you to use them as [bash aliases](https://linuxize.com/post/how-to-create-bash-aliases/).

```bash
alias build-score="sh <static/path/to/build.sh>"
alias make-score="sh <static/path/to/install.sh>"
```

Then, when you begin a project, run:

```bash
mkdir <my_dir>
cd my_dir
make-score
```

And then to build the project, with scores and parts, run:

```bash
build-score
```

# LaTeX Configuration

Create your score and parts in sibelius, as you typically would (ideally using `score.sib`, but that's up to you). Then for each exported score or part, create a copy of `score.tex`, and configure as follows.

```latex
% paper options: [a4paper, a3paper]
% orientation options: [landscape, portrait]
% part option: [part]
\documentclass[a4paper]{style/score-engraving}

\begin{document}
	\composer{Lewis Wolstanholme}
	\title{Title}
	\instrumentation{instrumentation}
	% \arranger{} % optional if using style/score-engraving
	\date{year}
	\maketitle

	\pagenumbering{roman}
	\section*{Performance Instructions}
	Write your performance instructions here!

	\newpage
	\pagenumbering{arabic}
	% add the path to your exported score here
	\includepdf[pages=-]{./pdfs/score.pdf}
	\finalpage{}
\end{document}
```