# Fall 2026 Plan

What the assistant team is expected to produce this term, and what state each assignment is in today. Open a pull request against the issue that tracks the assignment you are working on; see [CONTRIBUTING.md](CONTRIBUTING.md) for how to write one.

## Team

| Assistant | GitHub | Joined |
| --- | --- | --- |
| Amirhossein Motaghian | [@amirhossein2831](https://github.com/amirhossein2831) | Fall 2026 |
| Mohammad Hossein Shahbazi | [@mohammad8186](https://github.com/mohammad8186) | Fall 2026 |
| Sina Karimi | [@lazyboy81](https://github.com/lazyboy81) | Fall 2026 |

Amirhossein also assists on [is-assignment](https://github.com/1995parham-teaching/is-assignment).

## What is in the repository

Homework is 30% of the course mark and the deadlines are not extended, so an assignment has to be finished and reviewed before the lecture it follows is taught.

| Assignment | Follows lecture | State | Proposed owner |
| --- | --- | --- | --- |
| [`http`](src/http) | 2 — HTTP | Written, needs a term and a deadline | Sina Karimi |
| [`http-hands-on`](src/http-hands-on) | 2 — HTTP | Written, needs a term and a deadline | Sina Karimi |
| [`backend-morpheus`](src/backend-morpheus) | 7 — Go Programming | Written, needs a term and a deadline | Amirhossein Motaghian |
| [`backend-http-monitor`](src/backend-http-monitor) | 7 — Go Programming | Written, needs a term and a deadline | Mohammad Hossein Shahbazi |

Owners are a proposal from the instructor, not an assignment of blame — swap them between yourselves if the split suits you better, and say so on the issue.

## Before anything is handed out

Every assignment in `src/` was written for an earlier run of the course and still says so on its cover page.

- **All four carry a stale `\ترم`** — `پاییز ۱۴۰۱` or `بهار ۱۴۰۱`, which is Fall 2022 and Spring 2022. They must all read `پاییز ۱۴۰۵` before a student sees them.
- **None of them sets `\مهلت`**, so no cover page states a deadline. The instructor sets the dates; the owner puts them in the source.

Both are one-line changes in `src/<name>/main.tex`, and both belong in the same pull request as any other revision the assignment needs.

## Gaps

The course runs 3 or 4 projects, and the repository currently covers only HTTP and the Go backend. Nothing here follows these lectures:

| Lecture | Note |
| --- | --- |
| 3, 4, 5 — HTML, CSS, JavaScript | Frontend assignments were given in earlier semesters but were never part of this repository. |
| 9 — Web Application Architectures | No assignment. |
| 10 — Virtualization | No assignment. Docker is covered in a TA session. |
| 11 — Web Security | No assignment. The topic overlaps [`web-hardening`](https://github.com/1995parham-teaching/is-assignment/tree/main/src/web-hardening) in the security course. |

Filling a gap is worth more than polishing what is already written, but confirm the scope with the instructor on an issue first — four projects is the ceiling, not a target.

## Related

- [ie-lecture](https://github.com/1995parham-teaching/ie-lecture) — the course itself, and the syllabus deck that fixes the grading and the policies
- [ie-exam](https://github.com/1995parham-teaching/ie-exam) — midterm and final
- [students-fall-2023](https://github.com/1995parham-teaching/students-fall-2023) — the example Go ReST server handed to students
