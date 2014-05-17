\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fancyslides}[2013/04/23 my custom beamer slides class]
\RequirePackage[svgnames]{xcolor}
\LoadClass{beamer}


%%%% this is a~custom class for preparing presentations
%%%% contact me if anything goes wrong
%%%% or you want to contribute to the work
%%%% pawel.lupkowski@gmail.com
%%%% release: 24.05.2013






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% PACKAGES %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\RequirePackage{framed}    %% FOR FRAMED SLOGANS
\RequirePackage{tikz}      %% FOR POINTED SLOGANS


%%% redefines points for itemize
\setbeamertemplate{itemize items}{$\bullet$}
\newcommand{\fitem}{$\bullet$ \ }
\newcommand{\pitem}[1]{$\bullet$~#1 \pause}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% FRAMES FOR SLOGANS %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{mybox}{%
  \def\FrameCommand{\fboxsep=1cm \colorbox{\strcolor}}%
  \MakeFramed {\FrameRestore}}%
 {\endMakeFramed}


\newenvironment{mybox2}{%
  \def\FrameCommand{\fboxsep=1cm \colorbox{bi}}%
  \color{cz}\MakeFramed {\FrameRestore}}%
 {\endMakeFramed}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% COLOURS            %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{bi}{rgb}{1,1,1}
\definecolor{cz}{rgb}{0,0,0}
\definecolor{sz}{rgb}{0.90196079, 0.90196079, 0.90196079}
\definecolor{nieb}{rgb}{0.12941177, 0.45882353, 0.60784316}
\definecolor{ziel}{rgb}{0.44313726 0.78431374 0.21568628}
\definecolor{pom}{rgb}{1 0.49803922 0.16470589}



\newcommand{\customtextcol}[1]{#1} %text inside boxes and dots

\newcommand{\slogan}[1]{\Huge \MakeUppercase{#1}} %text inside boxes and dots
\newcommand{\fbckg}[1]{\setbeamertemplate{background canvas}{
{\begin{tikzpicture}\node[opacity=\opacity]{\includegraphics[width=\paperwidth]{#1}};\end{tikzpicture}}}}%frame background
% tret de http://tex.stackexchange.com/questions/78464/background-image-in-beamer-slides per poder variar l'opacitat de les imatges de fons (ara = .5=50%

\newcommand{\thankyou}{\pointedsl{\thankyoutext!}} %% thank you slide

%%% defines pointed slogan
\newcommand{\pointedsl}[1]{
\pgfsetfillopacity{\structureopacity}
\begin{center}
\tikz{ \fill[\strcolor] (0,0) circle (20ex);
\pgfsetfillopacity{1}
\node at (0,0) {
{\bfseries{\slogan{#1}}}
};
}%%
\end{center}
}


%%% defines framed slogan
\newcommand{\framedsl}[1]{
\pgfsetfillopacity{\structureopacity}
  \begin{mybox}
\pgfsetfillopacity{1}
%\begin{center}
  {\slogan{#1}}
%\end{center}
\end{mybox}
}



%%% itemised list frame
\newcommand{\itemized}[1]{
\pgfsetfillopacity{\structureopacity}
  \begin{mybox}
\pgfsetfillopacity{1}
\begin{center}
\begin{Huge}
\begin{itemize}
\pgfsetfillopacity{1}
#1
\end{itemize}
\end{Huge}
\end{center}
\end{mybox}
}




%%% starting slide
\newcommand{\startingslide}[1]{
\begin{frame}
\pgfsetfillopacity{\structureopacity}
  \begin{mybox}
\pgfsetfillopacity{1}
\begin{center}
{\Huge\textbf \titlephrase
 
}
    
\end{center}
\end{mybox}

\vspace{-1.5cm}

\pgfsetfillopacity{0.60}
\begin{mybox2}
\pgfsetfillopacity{0.80}
%\name \ $\bullet$ \  \affil \ $\bullet$ \ \email
{\Large\textbf {\name}}  \\  \email \\ $\bullet$ \  \affil  \\[1cm]  {\Large\textbf{\event}}
\end{mybox2}
\end{frame}
}




%%% misc slide: for putting different stuff into it
\newcommand{\misc}[1]{
\pgfsetfillopacity{\structureopacity}
  \begin{mybox}
\pgfsetfillopacity{1}
#1
\end{mybox}
}


%%% sources slide
\newcommand{\sources}[1]{
\pgfsetfillopacity{\structureopacity}
\begin{mybox}
\begin{block}{{\Huge \bf \sourcestext}}
\pgfsetfillopacity{1}
~\\
#1
\end{block}
\end{mybox}  
}



\endinput