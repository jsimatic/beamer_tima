% This model is only usable with LaTeX 2 epsilon
\NeedsTeXFormat{LaTeX2e}

% The provided class definition
\ProvidesClass{mybeamer}[2017/12/01 classe pour mise en forme TIMA]

% It is built over the beamer class
\LoadClassWithOptions{beamer}

% The default language is french
\RequirePackage[english, frenchb]{babel}

% Really useful stuff to allow font support by pdf printing
\RequirePackage[T1]{fontenc}

% Default fonts
\RequirePackage{times}

% Drawing package for the frame counter
\RequirePackage{tikz}

% ----------------------------------------------------------------------------
% LAYOUT DEFINITION
% ----------------------------------------------------------------------------

\useinnertheme[shadow=true]{rounded}
\useoutertheme{shadow}
%\usecolortheme{hog} %
\usepackage{template/beamercolorthemehog}
%\useoutertheme{smalltree}
\usepackage{template/beamerouterthemesmalltree}

\setbeamertemplate{itemize/enumerate body begin}{\setlength{\leftmargini}{12.5pt}}
\setbeamerfont{block title}{size={}}
\setbeamerfont{title}{size=\LARGE}
\setbeamerfont{subtitle}{size=\normalsize}
\setbeamerfont{framesubtitle}{size=\normalsize}
\setbeamerfont{subsection in head/foot}{size=\normalsize}
\setbeamertemplate{frametitle}{}


% ----------------------------------------------------------------------------
% Extra commands
% ----------------------------------------------------------------------------

% Various citation related commands
\newcommand{\myfmark}[1]{$^{\,#1}$}
\newcommand{\mycite}[1]{\xspace [#1]}
\newcommand<>{\footnotewoutmark}[1]{
    \renewcommand{\thefootnote}{}
    \footnotetext{\hspace{-4pt}\footnotesize\visible#2{#1}}
    \renewcommand{\thefootnote}{\arabic{footnote}}
}

% Inserts a bullet in beamer style
\newcommand{\beamerbullet}{\usebeamertemplate{itemize item}\xspace}


% To include tikz figure
\newcommand\includetikz[1]{\centering\shorthandoff{;:!}\input{figures/#1.tikz}\shorthandon{;:!}}
\newcommand{\tikzmark}[2]{\tikz[overlay,remember picture]{\node (#1) at (0,0) {};}}


