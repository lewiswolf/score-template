# score-template

LaTeX template for making full scores and parts.

# Dependencies

This repository was designed and test on MacOS, but can be used across other platforms. For MacOS users specifically, the dependencies are:

- [MacTex](https://formulae.brew.sh/cask/mactex-no-gui)

In general, you can work with this project in any editor, purely using the terminal. However, multiple shortcuts have been included in the repository for ease of use alongside [VSCode](https://formulae.brew.sh/cask/visual-studio-code). When you use the project for the first time, VScode will prompt you to install the required extensions.

# Install & Usage

There are two commands packaged with this repository, that I recommend you use as [bash aliases](https://linuxize.com/post/how-to-create-bash-aliases/). Mine, corresponding to `./bin/build.sh` and `./bin/install.sh` respectively, are:

```bash
alias build-score="sh ~/Documents/Code/score-template-build.sh"
alias mkscore="sh ~/Documents/Code/score-template-install.sh"
```

Then, when you begin a project, run:

```bash
mkdir <my_dir>
cd my_dir
mkscore
```

And then to build the project, with scores and parts, run:

```bash
build-score
```

# LaTeX Configuration

Create your score and parts in sibelius, as you typically would (ideally using `template.sib`, but that's up to you). Then for each exported score or part, create a copy of `index.tex`, and configure as follows.

```latex
% paper options: [a4paper, a3paper]
% orientation options: [landscape, portrait]
\documentclass[a4paper]{style/score-engraving}

\begin{document}
	% define your work
	\composer{Lewis Wolstanholme}
	\title{Title}
	\instrumentation{instrumentation}
	% \arranger{} % if using style/score-engraving
	\date{year}

	\maketitle
	\emptypage{}
	\pagenumbering{roman}

	\section*{Performance Instructions}
	Write your performance instructions here!

	\newpage
	\pagenumbering{arabic}
	% add the path to your exported score here
	\includepdf[pages=-]{./pdfs/score.pdf}
	\emptypage{}
	\finalpage{}
\end{document}
```