# Internet Engineering Assignments

[![build](https://github.com/1995parham-teaching/ie-assignments/actions/workflows/build.yml/badge.svg)](https://github.com/1995parham-teaching/ie-assignments/actions/workflows/build.yml)

## Introduction

The Internet Engineering course, as taught by me or Dr. Bakhshi, contains 3 or 4
projects. Each project contains a programming assignment related to the project
topic, and sometimes theoretical questions as well. Semesters had different
conditions, which led to different types of assignments and difficulty.

Assignments currently in this repository:

| Assignment | Topic |
| --- | --- |
| [`http`](src/http) | HTTP theory: versions, statefulness, client/server limits |
| [`http-hands-on`](src/http-hands-on) | Hands-on: a JWT authentication reverse proxy |
| [`backend-morpheus`](src/backend-morpheus) | Go backend: CRUD, a database, and a secondary ReST API |
| [`backend-http-monitor`](src/backend-http-monitor) | Go backend: HTTP endpoint monitoring with alerting |

Frontend assignments (HTML, CSS, JavaScript) were given in some semesters but
are not part of this repository.

## Reading the assignments

Built PDFs for the current `main` are attached to the
[`latest` release](../../releases/tag/latest) — no TeX toolchain needed.

## How to build?

The assignments are built with [TeX Live](https://tug.org/texlive/) (XeLaTeX,
driven by `latexmk`) and [Pygments](https://pygments.org), which `minted` shells
out to for code listings.

### With a local TeX Live

| Platform | Install |
| --- | --- |
| macOS | `brew install --cask mactex-no-gui` (or [MacTeX](https://tug.org/mactex/)) |
| Debian/Ubuntu | `apt install texlive-full latexmk python3-pygments` |
| Arch | `pacman -S texlive texlive-langarabic texlive-latexextra python-pygments` |
| Any | [`install-tl`](https://tug.org/texlive/acquire-netinstall.html) with `scheme-full` |

**TeX Live 2023 or newer is required.** The class asks `xepersian` for its
Persian command aliases with the `localize` option, which was spelled
`localise` up to TeX Live 2022.

A minimal installation is not enough: the class needs `xepersian`, `minted`,
`fvextra`, `geometry`, `hyperref` and `xcolor`. `scheme-full` is the path of
least resistance; with a smaller scheme, install them with
`tlmgr install xepersian minted fvextra`.

Then:

```bash
make            # build every assignment into build/
make list       # list the assignments
make clean      # remove build artefacts
```

### With Docker

No local TeX Live needed — this is also exactly what CI runs:

```bash
docker run --rm -v "$PWD":/work -w /work texlive/texlive:latest make
```

Each assignment is written to `build/<assignment-name>.pdf`.

## Writing an assignment

See [CONTRIBUTING.md](CONTRIBUTING.md) for the template, the Persian macros, and
the pull request workflow. The short version:

```latex
\documentclass{../assignment}

\عنوان{یک عنوان خوب}
\ترم{پاییز ۱۴۰۵}

\begin{document}

\عنوان‌ساز

\فهرست‌مطالب

\پایان‌ساز

\end{document}
```

in `src/<assignment-name>/main.tex`. The `Makefile` discovers it
automatically — there is no build manifest to update.
