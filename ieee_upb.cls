\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ieeeupb}[2025/04/27 Clase de documento para trabajos de grado IEEE UPB]

% Cargar clase base article
\LoadClass[12pt,letterpaper]{article}

% Paquetes requeridos
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{pdfpages}
\RequirePackage{tocloft}
\RequirePackage[spanish]{babel}
\RequirePackage{cite}
\RequirePackage{dirtytalk} % say
\RequirePackage{comment}
\RequirePackage{rotating} % rotate figures, tables...
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{float} % related to figure and position
\RequirePackage{array} % Para la definición de nuevas columnas
\RequirePackage{makecell} % Para la división de líneas dentro de celdas
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{lscape}
\RequirePackage{tabularx}
\RequirePackage{listings}
\RequirePackage{booktabs}

% Comando para caption inferior
\newcommand{\lowercaption}[1]{%
    \caption*{#1}
}

\RequirePackage{lipsum} % allows break lines
\RequirePackage[htt]{hyphenat}

% METADATA
\hypersetup{colorlinks=true,
            linkcolor=black,
            linktoc=all,
            citecolor=black,
            pdftitle={TITULO DEL TRABAJO},
            pdfauthor={AUTOR1,AUTOR2},
            pdfcreator={AUTOR1,AUTOR2}}

% Formato de los títulos según el nivel
% Para usar números romanos en las secciones
\renewcommand\thesection{\Roman{section}}

% Para usar letras en las subsecciones
\renewcommand\thesubsection{\Alph{subsection}}

% Para usar números 1) en el nivel 3
\renewcommand\thesubsubsection{\arabic{subsubsection}}

% Para usar letra a) en el nivel 4
\renewcommand\theparagraph{\alph{paragraph}}

\renewcommand\thesubparagraph{\arabic{subparagraph}}

% estilo para pseudocódigo formal
\definecolor{codegray}{rgb}{0.5,0.5,0.5}

% Configuración de geometría, márgenes
\geometry{
    letterpaper,
    top=2.5cm,
    bottom=2.5cm,
    left=2.5cm,
    right=2.5cm
}

% Interlineado 1.5
\onehalfspacing

% Sangría de primera línea
\setlength{\parindent}{1.27cm}

% Para que la numeración de páginas, aparezca arriba a la derecha
% Configuración de encabezados y pies de página
\fancypagestyle{plain}{%
    \fancyhf{} % Limpia todos los campos
    \fancyhead[R]{\hspace{-0.35cm}\textcolor{gray!100}{\thepage}} % Número de página en gris claro
    \renewcommand{\headrulewidth}{0pt} % Sin línea en el encabezado
}
% Hacer que todas las páginas usen este estilo
\pagestyle{plain}
% Asegurar que la primera página use el mismo estilo
\AtBeginDocument{%
    \thispagestyle{plain}
}

% Para reiniciar paragraph (título nivel 4) letters a) b) ...
\setcounter{secnumdepth}{6} 
\setcounter{tocdepth}{5}

% reset font size different index
\renewcommand{\cfttoctitlefont}{\normalsize\bfseries}
\renewcommand{\cftlottitlefont}{\normalsize\bfseries}
\renewcommand{\cftloftitlefont}{\normalsize\bfseries}

\setlength{\cftbeforetoctitleskip}{-1.4em}  

% Formato básico del TOC
\titlecontents{section}
[0pt]                                    % margen
{\normalfont\addvspace{0.5em}}                       % formato general
{\thecontentslabel.\quad}                % número con punto
{}                                       % sin número
{\titlerule*[.3pc]{.}\contentspage}      % puntos y página

\titlecontents{subsection}
[2em]                                    % margen
{\normalfont\addvspace{0.25em}}                            % formato general
{\thecontentslabel.\quad}                % número con punto
{}                                       % sin número
{\titlerule*[.3pc]{.}\contentspage}      % puntos y página

\titlecontents{subsubsection}
[3em]                                    % margen
{\normalfont\addvspace{0.30em}}                            % formato general
{{\thecontentslabel})\quad}              % número con paréntesis
{}                                       % sin número
{\titlerule*[.3pc]{.}\contentspage}      % puntos y página

\titlecontents{paragraph}
[4em]                                    % margen
{\normalfont}                            % formato general
{{\thecontentslabel})\quad}              % letra con paréntesis
{}                                       % sin número
{\titlerule*[.3pc]{.}\contentspage}      % puntos y página

\titlecontents{subparagraph}
[5em]                                    % margen
{\normalfont}                            % formato general
{{\thecontentslabel})\quad}              % letra con paréntesis
{}                                       % sin número
{\titlerule*[.3pc]{.}\contentspage}      % puntos y página

% Formato similar para listas de tablas y figuras
\titlecontents{figure}
[0pt]                                    % margen
{\normalfont\addvspace{0.25em}}          % formato general + espacio vertical
{Fig. \thecontentslabel \quad}         % etiqueta
{}                                       % sin número
{\titlerule*[.3pc]{.}\contentspage}      % puntos y página

% Formato similar para listas de tablas y figuras
\titlecontents{table}
[0pt]                                    % margen
{\normalfont\addvspace{0.25em}}          % formato general + espacio vertical
{TABLA \thecontentslabel \quad}         % etiqueta
{}                                       % sin número
{\titlerule*[.3pc]{.}\contentspage}      % puntos y página

\titlecontents{lstlisting}
[0pt]                                    % margen
{\normalfont\addvspace{0.25em}}          % formato general + espacio vertical
{Ext. \thecontentslabel \quad}          % etiqueta
{}                                       % sin número
{\titlerule*[.5pc]{.}\contentspage} 

% Ajustes para las listas (agregar esto después de los titlecontents)
\setlength{\cftfigindent}{0pt}
\setlength{\cftfignumwidth}{3em}
\setlength{\cftbeforefigskip}{8pt}  % Espacio entre entradas de figuras

% Ajustes para lista de tablas también
\setlength{\cfttabindent}{0pt}
\setlength{\cfttabnumwidth}{3em}
\setlength{\cftbeforetabskip}{8pt}  % Espacio entre entradas de tablas

% Ajuste del margen derecho para todas las listas
\setlength{\cftfignumwidth}{2.5em}
\setlength{\cfttabnumwidth}{2.5em}
\setlength{\textwidth}{\dimexpr\paperwidth-5cm\relax}

% Formato de títulos
% Nivel 1 (Capítulos)
\titleformat{\section}
{\normalfont\bfseries\centering}
{\Roman{section}.}{1em}{}
\titlespacing*{\section}{0pt}{*4}{*2}

% Nivel 2
\titleformat{\subsection}
{\normalfont\bfseries\itshape\raggedright}
{\Alph{subsection}.}{1em}{}
\titlespacing*{\subsection}{0pt}{*3}{*3}

% Nivel 3
\titleformat{\subsubsection}
[runin]
{\normalfont\bfseries\itshape}
{\arabic{subsubsection})}{1em}{}[:]
\titlespacing*{\subsubsection}{1cm}{*2}{*2}

% Nivel 4
\titleformat{\paragraph}[runin]
{\normalfont\bfseries\itshape}
{\alph{paragraph})}{1em}{}[:]
\titlespacing*{\paragraph}{1cm}{*1}{*1}

% Nivel 5
\titleformat{\subparagraph}[runin]
{\normalfont\bfseries}
{\arabic{subparagraph}.}{1em}{}[:]
\titlespacing*{\subparagraph}{1cm}{*1}{*1}

% Configuración de tablas (títulos en negrilla, interlineado 1.5)
\captionsetup[table]{
    labelsep=newline,
    justification=centering,
    singlelinecheck=false, % Asegura que también se aplique a captions de una línea
    labelfont={bf},
    textfont={bf},
    name=TABLA,
    skip=10pt,
    %list=no
}

% Configuración de figuras
\captionsetup[figure]{
    labelsep=space,
    justification=centering,
    name=Fig.,
    font=normalsize,
    skip=10pt
}

% Formato de listas: el texto de las viñetas inicia donde inicia el párrafo
\setlist[itemize]{labelindent=\parindent, leftmargin=*, labelsep=0.5em, itemindent=0pt}
\setlist[enumerate]{labelindent=\parindent, leftmargin=*, labelsep=0.5em, itemindent=0pt}

% Configuración de hipervínculos
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=black,
    urlcolor=blue,
}

% Comando para la portada (modificado para mantener la numeración)
\newcommand{\portada}[5]{
    \thispagestyle{fancy}  % Asegura que la portada tenga número de página
    \begin{center}
        {\bfseries #1\par}
        \vspace{5cm}
        {\bfseries #2\par}
        \vspace{0.5cm}
        \includegraphics[width=0.17\textwidth]{Tesis/Images/upb_logo.png}\par
        \vspace{0.3cm}
        {\bfseries TRABAJO DE GRADO PRESENTADO PARA OPTAR AL TÍTULO DE \\ #5 \par}
        \vspace{0.5cm}
        \vfill
        {\bfseries UNIVERSIDAD PONTIFICIA BOLIVARIANA\par}
        \vspace{0.28cm}
        {\bfseries #3\par}
        \vspace{0.28cm}
        {\bfseries #4\par}
        \vspace{0.28cm}
        {\bfseries BUCARAMANGA\par}
        \vspace{0.28cm}
        {\bfseries \number\year}
    \end{center}
    \clearpage
}

\newcommand{\contraportada}[7]{
    \thispagestyle{fancy}
    \begin{center}
        {\bfseries #1\par}
        \vspace{3.5cm}
        {\bfseries #2\par}
        \vspace{3cm}
        {\bfseries TRABAJO DE GRADO PARA OPTAR AL TÍTULO DE \\ #7\par}
        \vspace{2.5cm}
        {\bfseries DIRECTOR\par}
        \vspace{0.25cm}
        {\bfseries #4\par}
        \vfill
        {\bfseries UNIVERSIDAD PONTIFICIA BOLIVARIANA\par}
        \vspace{0.28cm}
        {\bfseries #5\par}
        \vspace{0.28cm}
        {\bfseries #6\par}
        \vspace{0.28cm}
        {\bfseries BUCARAMANGA\par}
        \vspace{0.28cm}
        {\bfseries \number\year}
    \end{center}
    \clearpage
}

% Colores más suaves y con buen contraste para tema claro
\definecolor{codegreen}{rgb}{0,0.5,0}  
\definecolor{codegray}{rgb}{0.4,0.4,0.4}
\definecolor{codepurple}{rgb}{0.5,0,0.5}
\definecolor{keywordcolor}{rgb}{0,0,0.8}    
\definecolor{backcolour}{rgb}{1,1,1}

%Definir JS
\lstdefinelanguage{JavaScript}{
  keywords={break, case, catch, class, const, continue, debugger, default, delete, do, else, export, extends, finally, for, function, if, import, in, instanceof, let, new, return, super, switch, this, throw, try, typeof, var, void, while, with, yield, await, static, of, interface, public, static, private, async},
  keywordstyle=\color{keywordcolor}\bfseries,
  ndkeywords={boolean, null, undefined, true, false, any, string, number},
  ndkeywordstyle=\color{codegray},
  identifierstyle=\color{black},
  sensitive=true,
  comment=[l]//,
  morecomment=[s]{/*}{*/},
  commentstyle=\color{codegreen}\itshape,
  stringstyle=\color{codepurple},
  morestring=[b]',
  morestring=[b]",
}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen}\itshape,
    keywordstyle=\color{keywordcolor}\bfseries,
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    xleftmargin=\parindent,
    inputencoding=utf8, 
    extendedchars=true,         % <-- activa caracteres extendidos
    literate=
        {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
        {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
        {ñ}{{\~n}}1 {Ñ}{{\~N}}1
        {ü}{{\"u}}1 {Ü}{{\"U}}1
        {¿}{{?``}}1 {¡}{{!``}}1,
    morestring=[b]`,
}

\lstset{style=mystyle}
% Configuración de pseudocodes
\captionsetup[lstlisting]{
    labelsep=space,
    justification=centering,
    name=Extracto.,
    font=normalsize,
    skip=10pt
}

\newcommand{\upbtablecaption}[2]{%
  \caption[\MakeUppercase{#1}]{\textbf{\MakeUppercase{#1}}~#2}%
}

\newenvironment{upbtable}[1][]{
  \renewcommand{\arraystretch}{0.6}
  \begin{tabular}[#1]{@{} >{\centering\arraybackslash}p{3cm} >{\centering\arraybackslash}p{3cm} >{\centering\arraybackslash}p{3cm} @{}}
}{
  \end{tabular}
}
