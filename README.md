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

Install [tectonic](https://github.com/tectonic-typesetting/tectonic) and
[Pygments](https://pygments.org) (`minted` needs `pygmentize` for code
listings), then:

```bash
tectonic -X build
```

All assignments are built into the `build` directory.

`Tectonic.toml` pins the TeX bundle to `tlextras-2022.0r0` so that a build today
produces the same PDF as a build in three years. It is the newest bundle
published on `data1.fullyjustified.net`, and it is newer than the default bundle
tectonic ships with — do not "upgrade" it without checking that a newer one
actually exists.

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

in `src/<assignment-name>/main.tex`, plus a matching output in `Tectonic.toml`:

```toml
[[output]]
name = "<assignment-name>"
type = "pdf"
shell_escape = true
preamble = ""
index = "<assignment-name>/main.tex"
postamble = ""
```
