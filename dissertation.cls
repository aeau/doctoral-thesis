\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissertation}[2020/04/08 Example LaTeX class]

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass{article}
\RequirePackage{xcolor}

\definecolor{slcolor}{HTML}{882B21}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


\newcommand{\sectionbreak}{\clearpage}
% \usepackage{arial}                           % load package which provides the font
% \renewcommand{\sfdefault}{ua1}               % set default serif font as Arial
% \renewcommand{\familydefault}{\sfdefault}    % set the default font as serif, i.e., Arial

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   ALL PACKAGES USED IN THIS CLS       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{morewrites} 
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}


\usepackage{blindtext}
% \usepackage{textcomp}
\usepackage{nameref}
\usepackage{newtxtext,newtxmath}
\usepackage[]{quoting}
\usepackage{helvet}
% \usepackage{apacite}
\usepackage{xparse}
\usepackage{setspace}
% \usepackage[T1]{fontenc}
% \usepackage[utf8]{inputenc}
\usepackage{changepage, lipsum}
\usepackage{everysel}
\usepackage[letterspace=50]{microtype}
% \usepackage{tocloft}
\usepackage{titletoc}
% \usepackage{tocloft}
% \renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\usepackage[bookmarks=true,breaklinks,backref=page]{hyperref}
\usepackage{bookmark}
\usepackage{emptypage}

\usepackage{cite}
\let\Bbbk\relax
\usepackage{amsmath,amssymb,amsfonts}

\usepackage{xfrac}
% \usepackage{algorithmic}
\usepackage{graphicx}
\usepackage{cleveref}
\usepackage{pdfpages}
\usepackage[nogroupskip,acronym,nonumberlist]{glossaries}

\usepackage{comment}
\usepackage{soul}

% \renewcommand{\familydefault}{\sfdefault}
\renewcommand{\sfdefault}{ptm}

%\usepackage[square]{natbib}
%\usepackage{bibentry}

% \usepackage{natbib}
%\usepackage[resetlabels,labeled]{multibib}
\usepackage{multibib}
\newcites{Included,NonIncluded,pone,psecond,pthird,pfourth,pfifth,psixth,pseventh,peighth,pninth,ptenth,peleventh,ptwelvth,pthirteenth}{Included Publications,Excluded Publications,References,References,References,References,References,References,References,References,References,References,References,References,References}



% \newcites{q}{References}peleventh
% \usepackage{bibentry}
% \nobibliography*

% \usepackage{csquotes} 
% \usepackage[natbib,style=authoryear]{biblatex}

\usepackage{titlesec}
\usepackage{epigraph}
% \usepackage[explicit]{titlesec}
\usepackage{enumitem}

% \usepackage[twoside, showframe=false,paper=a4paper,  top=4.85cm, bottom=5.85cm, 
% head=4.85cm, foot=4.75cm,
% left=5.5cm, right=4.7cm]{geometry}

%\usepackage[twoside, showframe=false,paper=a4paper,  top=2.0cm, bottom=3.0cm, 
%head=2.2cm, foot=3.0cm,
%left=3.0cm, right=2.2cm]{geometry}

\usepackage[twoside, showframe=false,paperheight=24cm,paperwidth=16cm,  top=2.0cm, bottom=3.0cm, 
head=2.2cm, foot=3.0cm,
left=3.0cm, right=2.2cm]{geometry}


%%%% CAPTION
% \usepackage[justification=centering]{caption} 
\usepackage[font=footnotesize,labelfont=bf]{caption} 
\captionsetup[table]{skip=10pt}
% \captionsetup[figure]{aboskip=10pt}

\usepackage{tabularx}

\usepackage{tikz}

\usepackage{algorithm}
\usepackage[noend]{algpseudocode}

% \ifCLASSOPTIONcompsoc
%  \usepackage[caption=false,font=normalsize,labelfont=sf,textfont=sf]{subfig}
% \else
%  \usepackage[caption=false,font=footnotesize]{subfig}
% \fi

\usepackage{subcaption}
%\usepackage[caption=false,font=footnotesize]{subfig}

%Uncomment to check margins!
\overfullrule=2cm

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       !!!!CUSTOM ALGORITHMIC COMMANDS!!!!     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\algnewcommand\algorithmicforeach{\textbf{for each}}
\algdef{S}[FOR]{ForEach}[1]{\algorithmicforeach\ #1\ \algorithmicdo}

\algblockdefx{MRepeat}{EndRepeat}{\textbf{repeat}}{}
\algnotext{EndRepeat}


% \usepackage{titlesec}
% \newenvironment{changemargin}[2]{%
% \begin{list}{}{%
% \setlength{\topsep}{0pt}%
% \setlength{\leftmargin}{#1}%
% \setlength{\rightmargin}{#2}%
% \setlength{\listparindent}{\parindent}%
% \setlength{\itemindent}{\parindent}%
% \setlength{\parsep}{\parskip}%
% }%
% \item[]}{\end{list}}

% \addtolength{\oddsidemargin}{65pt}
% \addtolength{\evensidemargin}{-.875in}
% \addtolength{\textwidth}{30pt}

% \addtolength{\topmargin}{65pt}
% \addtolength{\textheight}{1.75in}

\definecolor{mygray}{gray}{0.6}
\setlength{\parindent}{0.9em}

%%%%    PARAGRAPH SEPARATION!
%%%% If you want less separation between the paragraphs you may change this value!!!
%%%% This might mess with places where the command \vspace{} is called, thus, you might need
%%%% to readjust those.
\setlength{\parskip}{0.5em}
% \renewcommand{\baselinestretch}{1.18}

\usepackage{fancyhdr}
\renewcommand{\headrulewidth}{0pt}

% \AtBeginDocument{%
%   \renewcommand*{\AC@hyperlink}[2]{%
%     \begingroup
%       \hypersetup{hidelinks}%
%       \hyperlink{#1}{#2}%
%     \endgroup
%   }%
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       !!!!COMMANDS FOR THE FONTS!!!!          %
%            Size and spacing!                  %
%                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
\renewcommand\Large{\@setfontsize\Large{18pt}{18}}
\renewcommand\large{\@setfontsize\large{12pt}{12}}
\renewcommand\normalsize{\@setfontsize\normalsize{10.5pt}{14}}
\renewcommand\small{\@setfontsize\small{9.5pt}{14}}

\newcommand{\titlesize}{\@setfontsize\titlesize{9pt}{12}
\fontdimen2\font=0.45em% interword space
}
\newcommand{\maintitlesize}{\@setfontsize\maintitlesize{22pt}{25}
\fontdimen2\font=0.35em% interword space
}
\newcommand{\subtitlesize}{\@setfontsize\subtitlesize{14pt}{16}}
\newcommand{\TitleInfoSize}{\@setfontsize\TitleInfoSize{12pt}{16}}

\newcommand{\previoustitles}{\@setfontsize\previoustitles{9pt}{9}}
\newcommand{\previoustitlesX}{\@setfontsize\previoustitlesX{11pt}{9}}

\newcommand{\subsubsectionFont}{\@setfontsize\subsubsectionFont{11.5pt}{15}}

\newcommand{\subsubsubsectionFont}{\@setfontsize\subsubsubsectionFont{10.5pt}{15}}

\newcommand{\juniorSize}{\@setfontsize\juniorSize{10pt}{16}}

% \newcommand{\dissQuote}[0]{{\Large\sffamily\bfseries}}

% \newenvironment{dissQuote}
% { \rule{1ex}{1ex}\hspace{\stretch{1}} }
% { \hspace{\stretch{1}}\rule{1ex}{1ex} }

% \newenvironment{dissQuote}
% {\itshape\noindent\ignorespaces
% }%
% {\par\noindent%
% \ignorespacesafterend}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       ENVIRONMENT FOR A QUOTE     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewDocumentEnvironment{dissQuote}{m}
{\fontfamily{ptm}\selectfont\small\itshape\begin{adjustwidth}{2.05em}{2.05em} }
{\vspace{-15pt} \small\normalfont\par\raggedleft\fontfamily{ptm}\selectfont #1 \end{adjustwidth}\vspace{0pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       ENVIRONMENT FOR A STANDALONE QUESTION    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewDocumentEnvironment{retQuestion}{}
{\fontfamily{ptm}\selectfont\small\begin{adjustwidth}{2.05em}{2.05em} }
{\end{adjustwidth}\vspace{0pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       ENVIRONMENT FOR A STANDALONE QUESTION    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewDocumentEnvironment{kuestion}{}
{\fontfamily{ptm}\selectfont\Large\itshape\begin{adjustwidth}{2.05em}{2.05em} }
{\end{adjustwidth}\vspace{0pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       EXAMPLE   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           ENVIRONMENT FOR FIRST TITLE                 %
%                       PAGE 1                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\setTitle}[2] {
  \cleardoublepage\thispagestyle{empty}
  ~
  \vspace{150pt}

\SetTracking[no ligatures={f},spacing={600*,-100*,},outer spacing={450,250,150},outer kerning={*,*}]{encoding=*}{180}

\begin{flushright}
\begin{spacing}{0.8}
% \textls{\bfseries\titlesize\fontfamily{phv}\selectfont\MakeUppercase{\myMainTitle} \\
%\textls{\bfseries\titlesize\fontfamily{phv}\selectfont\MakeUppercase{Exploring the Dynamic Properties} \\ \MakeUppercase{of Interaction in Mixed-Initiative} \\ \MakeUppercase{Procedural Content Generation} \\
\textls{\bfseries\titlesize\fontfamily{phv}\selectfont\MakeUppercase{Exploring Game Design} \\ \MakeUppercase{through Human-AI Collaboration}
%\\ \MakeUppercase{Procedural Content Generation} \\

%Exploring Game Design through Human-AI Collaboration
  \titlesize\fontfamily{phv}\selectfont\MakeUppercase{\mySubTitle}}
\end{spacing}
\end{flushright}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           ENVIRONMENT FOR PUBLICATION SERIE           %
%                       PAGE 2                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\setPublicationSeries}[2] {
\newpage\thispagestyle{empty}
~
  \vspace{100pt}
    
    \fontfamily{phv}\selectfont\mainUniversity{,} \\
    Studies in Computer Science No \publicationSerie{,} \\
    \dissertationType \\
  
\mbox{}
\vfill
\raggedbottom
    \fontfamily{ptm}\selectfont
    \textcopyright{} \myName, \graduationYear \\
    ISBN \printISBN{} (print) \\
    ISBN \pdfISBN{} (pdf) \\
    \printCompany{} \graduationYear
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           ENVIRONMENT FOR MAIN TITLE                  %
%                       PAGE 3                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\setMainTitle}[2] {
  \cleardoublepage\thispagestyle{empty}
  ~
  \vspace{100pt}

\SetTracking[no ligatures={f},spacing={20*,-20*,},outer spacing={450,250,150},outer kerning={*,*}]{encoding=*}{40}

\begin{flushleft}

    % \bfseries\maintitlesize\fontfamily{phv}\selectfont\textls{\textcolor{gray}{\MakeUppercase{\myName}}} \\
    % \vspace{7pt}
    
    % \begin{spacing}{0.9}
    %     % \bfseries\maintitlesize\textls{\MakeUppercase{\myMainTitle}} 
    %     %\bfseries\maintitlesize\textls{\MakeUppercase{Exploring the} 
    % %    \MakeUppercase{Dynamic Properties} 
    %  %   \MakeUppercase{of Interaction} \\
    %   %  \MakeUppercase{in Mixed-Initiative} \\ 
    %   % \MakeUppercase{Procedural}
    %     %\MakeUppercase{Content Generation}} 
        
    %      \bfseries\maintitlesize\textls{\MakeUppercase{Exploring the} \\
    %      \MakeUppercase{Dynamic Properties} \\
    %      \MakeUppercase{of Interaction in} \\
    %      \MakeUppercase{Mixed-Initiative} \\ 
    %      \MakeUppercase{Procedural} \\
    %      \MakeUppercase{Content Generation}} 
    
    %qag or cmss (https://www.overleaf.com/learn/latex/Font_typefaces)  
         
    \maintitlesize\fontfamily{qag}\selectfont\textls{\textcolor{gray}{\MakeUppercase{\myName}}} \\
    \vspace{7pt}
    
    \begin{spacing}{0.9}
        % \bfseries\maintitlesize\textls{\MakeUppercase{\myMainTitle}} 
        %\bfseries\maintitlesize\textls{\MakeUppercase{Exploring the} 
    %    \MakeUppercase{Dynamic Properties} 
     %   \MakeUppercase{of Interaction} \\
      %  \MakeUppercase{in Mixed-Initiative} \\ 
       % \MakeUppercase{Procedural}
        %\MakeUppercase{Content Generation}} 
        
         %\maintitlesize\textls{\MakeUppercase{Exploring the} \\
         %\MakeUppercase{Dynamic Properties} \\
         %\MakeUppercase{of Interaction in} \\
         %\MakeUppercase{Mixed-Initiative} \\ 
         %\MakeUppercase{Procedural} \\
         %\MakeUppercase{Content Generation}} 
         
         \maintitlesize\textls{\MakeUppercase{Exploring Game Design} \\
         \MakeUppercase{through Human-AI} \\
         \MakeUppercase{Collaboration}}
        % Exploring Game Design through Human-AI Collaboration
        
    \end{spacing}
    
    
    \vspace{15pt}
    \hrule 
    \vspace{-10pt}
    
    \normalfont\subtitlesize\fontfamily{phv}\selectfont\mySubTitle

\end{flushleft}

\mbox{}
\vfill
  
\begin{flushright}
    \normalfont\juniorSize\fontfamily{qag}\selectfont\juniorSize\mainUniversity{,} \juniorSize\fontfamily{qag}\selectfont\graduationYear{} \\
    \normalfont\juniorSize\fontfamily{qag}\selectfont\juniorSize\universityFaculty{} \\
    \normalfont\juniorSize\fontfamily{qag}\selectfont\juniorSize\universityDepartment{} \\
    \normalfont\juniorSize\fontfamily{qag}\selectfont\juniorSize\partnerUniversity{}
\end{flushright}
    
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           ENVIRONMENT FOR LISTING OTHER THESES        %
%                       PAGE 4                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{otherTheses}
{
\newpage\thispagestyle{empty}
~
% \vspace{70pt}

%% You might use this or comment and use the next one.
\fontfamily{phv}\selectfont\bfseries\subtitlesize Studies in Computer Science\\

\vspace{-17pt}
\normalfont\fontfamily{ptm}\selectfont\previoustitlesX
\fontfamily{ptm}\selectfont\universityFaculty \\
\fontfamily{ptm}\selectfont\mainUniversity

%\normalfont\previoustitles Previously released titles in the series:

% \vspace{-20pt}
% \begin{enumerate}\raggedright}
% {\end{enumerate}
%     \fontfamily{phv}\selectfont The publication is also available at: \\
% DOI \doi{}
% }

\begin{enumerate}}
{\end{enumerate}
    %\vspace{-15pt}
    \fontfamily{ptm}\selectfont\previoustitles The publication is also available at: \\ 
    
    \vspace{-17pt} 
    
    \url{http://doi.org/\doi}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           ENVIRONMENT FOR DEDICATION                  %
%                   PAGE 5                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewDocumentEnvironment{dedication}{}
{\normalfont\cleardoublepage\thispagestyle{empty}
~
\fontfamily{ptm}\selectfont\small\vspace{140pt}\begin{flushright}\itshape}
{\end{flushright}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   COMMAND TO DECLARE KEYWORDS IN THE ABSTRACT         %
%               MIN. 3 - MAX. 6                         %
%                   PAGE 6                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareDocumentCommand{\dissertationKeywords}{mmmooo}  
{%
\bfseries\normalsize Keywords. \normalfont\fontfamily{ptm}\selectfont #1, #2, #3\IfValueT{#4}{, #4}\IfValueT{#5}{, #5}\IfValueT{#6}{, #6}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           ENVIRONMENT FOR YOUR PUBLICATION LIST       %
%                   AFTER ABSTRACT                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
\DeclareDocumentCommand{\includedPaper}{mmm}
{\normalfont\thispagestyle{empty}
~
\section[#2]{#1} \vspace{-65pt}
% \fontfamily{phv}\selectfont\large\bfseries #1 \vspace{30pt}
\fontfamily{ptm}\selectfont\small\itshape #3 \vspace{35pt}
    
}


 \titlecontents{section}[0em]{\smallskip\bfseries}%
 {\thecontentslabel \enspace}%numbered
 {}%numberless
 {\titlerule*[0.5pc]{.}\contentspage}%
 
  \titlecontents{subsection}[1em]{\vspace{-1.2em}}%
 {\thecontentslabel \enspace}%numbered
 {}%numberless
 {\titlerule*[0.5pc]{.}\contentspage}%
 
   \titlecontents{subsubsection}[2em]{\vspace{-1.5em}}%
 {\thecontentslabel \enspace}%numbered
 {}%numberless
 {\titlerule*[0.5pc]{.}\contentspage}%
 
\titlecontents{paragraph}[3em]{\vspace{-1.5em}}%
 {\itshape\thecontentslabel \enspace}%numbered
 {}%numberless
 {\titlerule*[0.5pc]{.}\contentspage}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           REDEFINITION OF THE POSSIBLE HEADERS        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \usepackage{sectsty}

%\chapterfont{\fontfamily{pag}\selectfont} %% for chapter if you want
% \sectionfont{\fontfamily{phv}\selectfont}

% \newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
%                     \thispagestyle{plain}%
%                     \global\@topnum\z@
%                     \@afterindentfalse
%                     \secdef\@chapter\@schapter}

% \renewcommand\thechapter{\hspace{-1em}}
% \renewcommand{\chapter}{%
%     \clearpage
%     \@startsection
%     {chapter}{0}{0pt}{-1.5ex plus -1ex minus -.2ex}%
%     {65pt}{\centering\fontfamily{phv}\selectfont\Large\bfseries}%
% }


  
% \titleformat{\section}
%   {\normalfont\LARGE\bfseries\filleft}
%   {}
%   {0em}
%   {%
%     \parbox[b]{\dimexpr\linewidth-2.5cm}{#1}\hfill%
%     \parbox[b]{2cm}{\hfill{\fontsize{80}{96}\selectfont\thesection}}%
%   }
  
%   \titleformat{name=\section,numberless}
%   {\normalfont\LARGE\bfseries\filleft}
%   {}
%   {0em}
%   {\parbox[b]{\dimexpr\linewidth-2.5cm\relax}{#1}}
  
%   \titlespacing*{\section}
%   {0pt}{50pt}{40pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       REFORMAT PART       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\part}[display]
  {\thispagestyle{empty} \centering\fontfamily{phv}\selectfont\Large\bfseries\vspace{100pt}}
  {\partname~\thepart.}
  {20pt}
  {\textls[130]}
  {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       REFORMAT SECTION       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\section}
  {\cleardoublepage\vspace*{20pt}\fontfamily{phv}\selectfont\Large\bfseries}   % The style of the section title
  {}                             % a prefix
  {0pt}                          % How much space exists between the prefix and the title
  {}    % How the section is represented

% Starred variant
\titleformat{name=\section,numberless}
  {\cleardoublepage\vspace*{20pt}\fontfamily{phv}\selectfont\Large\bfseries}
  {}
  {0pt}
  {}
  
  \titlespacing*{\section}
  {0pt}{0pt}{65pt}
  %left top bottom
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    REFORMAT SUBSECTION       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\subsection}
  {\fontfamily{phv}\selectfont\large\bfseries}   % The style of the section title
  {}                             % a prefix
  {0pt}                          % How much space exists between the prefix and the title
  {}    % How the section is represented

% Starred variant
\titleformat{name=\subsection,numberless}
  {\fontfamily{phv}\selectfont\large\bfseries}
  {}
  {0pt}
  {}
  
  \titlespacing*{\subsection}
  {0pt}{1.5ex}{0pt}
  %{0pt}{-1.5ex plus -1ex minus -.2ex}{0pt}
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    REFORMAT SUBSUBSECTION     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\subsubsection}
  {\fontfamily{phv}\selectfont\subsubsectionFont}   % The style of the section title
  {}                             % a prefix
  {0pt}                          % How much space exists between the prefix and the title
  {}    % How the section is represented

% Starred variant
\titleformat{name=\subsubsection,numberless}
  {\fontfamily{phv}\selectfont\subsubsectionFont}
  {}
  {0pt}
  {}
  
  \titlespacing*{\subsubsection}
  {0pt}{1.5ex}{-0.4ex}
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    REFORMAT PARAGRAPH     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\paragraph}
  {\subsubsubsectionFont\itshape\fontfamily{ptm}\selectfont}   % The style of the section title
  {}                             % a prefix
  {0pt}                          % How much space exists between the prefix and the title
  {}    % How the section is represented

% Starred variant
\titleformat{name=\paragraph,numberless}
  {\subsubsubsectionFont\itshape\fontfamily{ptm}\selectfont}
  {}
  {0pt}
  {}
  
  \titlespacing*{\paragraph}
  {0pt}{0pt}{0pt}
  
% \titleformat{\section}
%   {\normalfont}
%   {\thesection}
%   {1em}
%   {\MakeLowercase{#1}}
  
% \titleformat{\section}[display]
%   {\thispagestyle{empty}\normalfont\Large\bfseries}   % The style of the section title
%   {}                             % a prefix
%   {100pt}                          % How much space exists between the prefix and the title
%   {Section \thesection:\quad}    % How the section is represented
%   {}
% \titlespacing*{\section}{0pt}{10pt}{5pt}
  
% \renewcommand\thesection{}
% \def\thesection     {\arabic{section}}

% \def\@seccntformat#1{%
%   \expandafter\ifx\csname c@#1\endcsname\c@section\else
%   \csname the#1\endcsname\quad
%   \fi}
% \renewcommand{\section}{%
%     \clearpage
%     \@startsection
%     {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
%     {65pt}{\fontfamily{phv}\selectfont\Large\bfseries}%
% }

% \newcommand\prefix@section{Section \thesection: }
% \def\p@section{}

% \renewcommand\thesubsection{\hspace{-1em}}

% \def\@subseccntformat#1{%
%   \expandafter\ifx\csname c@#1\endcsname\c@subsection\else
%   \csname the#1\endcsname\quad
%   \fi}

% \renewcommand{\subsection}{%
%     \@startsection
%     {subsection}{2}{0pt}{2pt}%
%     {1sp \@minus 0ex\nointerlineskip\vspace{-5pt}}{\fontfamily{phv}\selectfont\large\bfseries}%
% }

% \renewcommand\thesubsubsection{\hspace{-1em}}

% \renewcommand{\subsubsection}{%
%     \@startsection
%     {subsubsection}{3}{0pt}{8pt}%
%     {1sp \@minus 0ex\nointerlineskip\vspace{-10pt}}{\subsubsectionFont\fontfamily{phv}\selectfont}%
% }

% \renewcommand\theparagraph{\hspace{-1em}}

% \renewcommand{\paragraph}{%
%     \@startsection
%     {paragraph}{4}{0pt}{0pt}%
%     {1sp \@minus 0ex\nointerlineskip\vspace{-8pt}}{\subsubsubsectionFont\itshape\fontfamily{ptm}\selectfont}%
% }

% \renewcommand*{\headrulewidth}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           FOOTER AND HEADER!!!       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancyhf{}
\pagestyle{fancy}
% \fancyfoot[EEL]{\vspace{-100pt}\fontfamily{ptm}\selectfont\textcolor{mygray}{\thepage}}
% \fancyfoot[OOR]{\vspace{-130pt}\fontfamily{ptm}\selectfont\textcolor{mygray}{\thepage}}
\fancyfoot[EEL]{\vspace{-60pt}\fontfamily{ptm}\selectfont\textcolor{mygray}{\thepage}}
\fancyfoot[OOR]{\vspace{-60pt}\fontfamily{ptm}\selectfont\textcolor{mygray}{\thepage}}
\fancyhead[OER]{}

% \renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
% \setlength{\textwidth}{30cm}
% \setlength{\textheight}{22cm}
% \setcounter{secnumdepth}{0}