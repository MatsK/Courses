%%%%% 情報工学基礎実験用クラスファイル %%%%%
\ProvidesClass{jikken}[2006/01/15]
\LoadClassWithOptions{jarticle} % ベースとするクラスファイル
\RequirePackage{fancyhdr} % ヘッダ・フッタの制御パッケージ
\@twosidetrue  \@mparswitchtrue     %% twoside option enforced

\typeout{  }
\typeout{Tutorial manual class file "jikken.cls" loaded; dated 2006/01/15; Shunsuke ARAKI}
\typeout{  }

%% page design
\setlength{\oddsidemargin}{-5.4mm}   % 25.4 mm + hoffset = 左端
\setlength{\evensidemargin}{-5.4mm}  % -5.4mm で両端均等
\setlength{\textwidth}{17cm}
\setlength{\textheight}{238mm}
\setlength{\headsep}{10mm}     % ヘッダと本文の間隔
\setlength{\headheight}{10mm} % ヘッダの縦幅
\setlength{\topmargin}{0mm}   % ヘッダとvoffsetとの間隔
\setlength{\footskip}{15mm}
\setlength{\voffset}{-15mm}     % 25.4 mm + voffset = ヘッダの位置

%% 実験番号
\gdef\@expnum{}
\def\expnum#1{\gdef\@expnum{#1}}

%% ヘッダ部のタイトル定義
\gdef\@htitle{}
\def\htitle#1{\gdef\@htitle{#1}}

%% ページ番号のスタイル変更
\renewcommand{\thepage}{\@expnum \hspace{1pt} -- \arabic{page}}

%% タイトル設定
\def\@maketitle{%
\newpage\null
%\vskip -1em%
\begin{center}%
\let\footnote\thanks
  {\LARGE No.\@expnum \hspace{0.5em} \@title \par}%
\end{center}%
\par\vskip 1.5em}

%% ヘッダとフッタの設定
\renewcommand{\headrulewidth}{0pt}%
\renewcommand{\footrulewidth}{0pt}%
\lhead[\@htitle]{}  % 左上
\chead[]{}  % 中央上
\rhead[]{\@htitle}  % 右上
\lfoot[]{}  % 左下
\cfoot[\thepage]{\thepage}  % 中央下
\rfoot[]{}  % 右下
\pagestyle{fancyplain}%
\pagestyle{fancy}%

