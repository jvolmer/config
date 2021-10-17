\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2021/10/12 CV]

\LoadClass[a4paper]{scrartcl}

\PassOptionsToPackage{osf}{newpxtext}
\RequirePackage{newpxtext}

\PassOptionsToPackage{a4paper}{geometry}
\PassOptionsToPackage{margin=1.5cm}{geometry}
\PassOptionsToPackage{top=2cm}{geometry}
\RequirePackage{geometry}

\RequirePackage{setspace}
\RequirePackage{makecell}
\RequirePackage{enumitem}
\RequirePackage{xcolor}

\RequirePackage{hyperref}
\hypersetup{
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={},
  colorlinks=false,
  urlbordercolor=black,
  pdfborderstyle={/S/U/W .1}
}

\pagenumbering{gobble}


\newlength{\sectionskip}
\newlength{\subsectionskip}
\newlength{\afterheaderskip}
\newlength{\itemheaderskip}
\setlength{\itemheaderskip}{.5\baselineskip}
\setlength{\parindent}{0cm}


\renewcommand{\section}{\vspace{\sectionskip}}
\renewcommand{\subsection}{\vspace{\subsectionskip}}

\renewcommand{\cellalign}{tl}
\newcolumntype{R}[1]{>{\normalsize\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\newcommand{\bulletsquare}{\textcolor{gray}{\raisebox{0ex}{\rule{1ex}{1ex}}}}

\newenvironment{datelines}
 {\begin{tabular}{@{}p{.4\textwidth} @{}>{\footnotesize}p{.45\textwidth} @{}R{.15\textwidth}}}{\end{tabular}}

\newenvironment{accomplishments}
{\vspace{\itemheaderskip}\begin{itemize}[left=0pt .. .5cm, label=\bulletsquare, nosep, topsep=0cm]\small}{\end{itemize}}

 
% ============= user interface =================
 
\newcommand{\header}[3]{%
 \begin{spacing}{1.5}
 {\huge\raggedright\mdseries\rmfamily #1 \textsc{#2}}
  \hfill\parbox[b]{3.7cm}{
    \small #3
  }
\end{spacing}
\vspace{\afterheaderskip}}

\renewenvironment{abstract}
{\par\itshape\small}{\par}

\newenvironment{skills}
{\section\begin{itemize}[left=0pt .. .5cm, label=\bulletsquare, itemsep=\lineskip, topsep=0cm]\small}{\end{itemize}}

\newenvironment{jobs}
{\section\begin{itemize}[left=0pt, label={}, nosep, itemsep=\subsectionskip, topsep=0cm, leftmargin=0cm]}{\end{itemize}}

\newcommand{\job}[5]{%
  \begin{datelines}
    #2 & #3, #4 & #1
  \end{datelines}%
  \begin{accomplishments}
    #5%
  \end{accomplishments}
}

\newenvironment{education}
{\section\begin{spacing}{1.5}\small\begin{datelines}}{\end{datelines}\end{spacing}}

\newenvironment{projects}
{\section{PersonalProjects}\begin{accomplishments}}{\end{accomplishments}}

\endinput