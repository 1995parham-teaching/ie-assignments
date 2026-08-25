\ProvidesClass{assignment}
              [Parham Alvani's theme for IE assignments]

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{enumerate}
\RequirePackage{minted}

\LoadClass[]{article}

\RequirePackage[
  colorlinks=true,
  linkcolor=black,
  urlcolor=orange,
]{hyperref}
\RequirePackage[
   a4paper,
   left=2.5cm,
   right=2.5cm,
   top=2.5cm,
   bottom=2.5cm
]{geometry}
% The Persian command aliases (\قسمت, \فقره, \متن‌لاتین, ...) come from this
% option. It was spelled [localise] before TeX Live 2023 and is [localize] now.
\RequirePackage[localize]{xepersian}

\usemintedstyle{one-dark}

\setlength{\parindent}{0pt}
\renewcommand{\baselinestretch}{1.5}

\eqcommand{تارنما}{href}
\eqcommand{پایان‌ساز}{makefooter}

\date{\persiantoday}

\renewcommand{\listingscaption}{قطعه‌کد}

% متادیتای سند
%
% نام درس و ترم تحصیلی در صفحه عنوان چاپ می‌شوند و می‌توانند در سربرگ هر تمرین
% تعیین شوند:
%
%   \درس{مهندسی اینترنت}
%   \ترم{پاییز ۱۴۰۵}
%
% اگر \ترم مشخص نشود، ترم جاری از روی تاریخ ساخته‌شدن سند حدس زده می‌شود.

% \def به جای \newcommand، تا \ifx با \@empty (که \long نیست) قابل مقایسه باشد.
\def\ie@course{مهندسی اینترنت}
\newcommand{\course}[1]{\def\ie@course{#1}}
\eqcommand{درس}{course}

\def\ie@semester{}
\newcommand{\semester}[1]{\def\ie@semester{#1}}
\eqcommand{ترم}{semester}

% حدس ترم تحصیلی از روی ماه شمسی:
%   مهر تا دی (۷--۱۰)      پاییز
%   بهمن تا خرداد (۱۱--۳)  بهار
%   تیر تا شهریور (۴--۶)   تابستان
% بهمن و اسفند به سال تحصیلی بعد تعلق دارند.
\newcount\ie@termyear
\newcommand{\ie@autosemester}{%
  \ie@termyear=\persianyear\relax
  \ifnum\persianmonth>10\relax
    \advance\ie@termyear by 1\relax
    بهار%
  \else
    \ifnum\persianmonth>6\relax
      پاییز%
    \else
      \ifnum\persianmonth>3\relax
        تابستان%
      \else
        بهار%
      \fi
    \fi
  \fi
  \ \the\ie@termyear
}

% xepersian installs its own \maketitle for the document class, and it does
% so after this class is read, so the cover page has to be (re)defined once
% every package has had its say.
\AtBeginDocument{%
  \renewcommand{\maketitle}{%
    \begin{center}
    \textit{بسمه تعالی}
    \vfill
    {\huge تمرین \@title}\\[0.5cm]
    {\large \ie@course}\\[0.5cm]
    {\ifx\ie@semester\@empty
       \ClassWarning{assignment}{No semester set; guessing it from the build
         date. Set it explicitly with \string\ترم}%
       \ie@autosemester
     \else
       \ie@semester
     \fi}
    \vfill
    \end{center}
    \newpage
  }
}

\newcommand{\makefooter}{%
  \vfill
  \begin{center}
    این سند برپایه بسته \متن‌لاتین{\زی‌پرشین} گونه \متن‌لاتین{\گونه‌زی‌پرشین} توسعه پیدا کرده است.
    نگارش شده به تاریخ \@date
  \end{center}
}

% وزیرمتن قلم فارسی ندارد، بنابراین حالت مورب آن به صورت مصنوعی ساخته می‌شود.
\settextfont[
  Path = ../fonts/,
  Extension = .ttf,
  UprightFont = *-Regular,
  BoldFont = *-Bold,
  AutoFakeSlant = 0.15
]{Vazirmatn}

\setlatintextfont[
  Path = ../fonts/,
  Extension = .ttf,
  UprightFont = *-Regular,
  BoldFont = *-Bold,
  ItalicFont = *-Italic
]{Neuton}
