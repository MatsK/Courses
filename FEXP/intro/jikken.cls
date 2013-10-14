%%%%% ���󹩳ش��ü¸��ѥ��饹�ե����� %%%%%
\ProvidesClass{jikken}[2006/01/15]
\LoadClassWithOptions{jarticle} % �١����Ȥ��륯�饹�ե�����
\RequirePackage{fancyhdr} % �إå����եå�������ѥå�����
\@twosidetrue  \@mparswitchtrue     %% twoside option enforced

\typeout{  }
\typeout{Tutorial manual class file "jikken.cls" loaded; dated 2006/01/15; Shunsuke ARAKI}
\typeout{  }

%% page design
\setlength{\oddsidemargin}{-5.4mm}   % 25.4 mm + hoffset = ��ü
\setlength{\evensidemargin}{-5.4mm}  % -5.4mm ��ξü����
\setlength{\textwidth}{17cm}
\setlength{\textheight}{238mm}
\setlength{\headsep}{10mm}     % �إå�����ʸ�δֳ�
\setlength{\headheight}{10mm} % �إå��ν���
\setlength{\topmargin}{0mm}   % �إå���voffset�Ȥδֳ�
\setlength{\footskip}{15mm}
\setlength{\voffset}{-15mm}     % 25.4 mm + voffset = �إå��ΰ���

%% �¸��ֹ�
\gdef\@expnum{}
\def\expnum#1{\gdef\@expnum{#1}}

%% �إå����Υ����ȥ����
\gdef\@htitle{}
\def\htitle#1{\gdef\@htitle{#1}}

%% �ڡ����ֹ�Υ��������ѹ�
\renewcommand{\thepage}{\@expnum \hspace{1pt} -- \arabic{page}}

%% �����ȥ�����
\def\@maketitle{%
\newpage\null
%\vskip -1em%
\begin{center}%
\let\footnote\thanks
  {\LARGE No.\@expnum \hspace{0.5em} \@title \par}%
\end{center}%
\par\vskip 1.5em}

%% �إå��ȥեå�������
\renewcommand{\headrulewidth}{0pt}%
\renewcommand{\footrulewidth}{0pt}%
\lhead[\@htitle]{}  % ����
\chead[]{}  % �����
\rhead[]{\@htitle}  % ����
\lfoot[]{}  % ����
\cfoot[\thepage]{\thepage}  % �����
\rfoot[]{}  % ����
\pagestyle{fancyplain}%
\pagestyle{fancy}%
