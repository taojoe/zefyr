# Zefyr [![Build Status](https://travis-ci.com/memspace/zefyr.svg?branch=master)](https://travis-ci.com/memspace/zefyr) [![codecov](https://codecov.io/gh/memspace/zefyr/branch/master/graph/badge.svg)](https://codecov.io/gh/memspace/zefyr)

*Soft and gentle rich text editing for Flutter applications.*

Zefyr is currently in **early preview**. If you have a feature
request or found a bug, please file it at the [issue tracker][].

[issue tracker]: https://github.com/memspace/zefyr/issues

### Documentation

* [Quick Start][quick_start]
* [Data Format and Document Model][data_and_document]
* [Style attributes][attributes]
* [Heuristic rules][heuristics]
* [FAQ][faq]

[quick_start]: /doc/quick_start.md
[data_and_document]: /doc/data_and_document.md
[attributes]: /doc/attributes.md
[heuristics]: /doc/heuristics.md
[faq]: /doc/faq.md

## Clean and modern look

Zefyr's rich text editor is built with simplicity and flexibility in
mind. It provides clean interface for distraction-free editing. Think
Medium.com-like experience.

[screenshot]

## Markdown-style semantics

Ever needed to have a heading line inside of a quote block, like in
this Markdown block:

> ### I'm a Markdown heading
> And I'm a regular paragraph

Zefyr can deliver exactly that:

<img src="https://github.com/memspace/zefyr/raw/master/markdown-semantics.png" width="375">

> Nested blocks support (e.g. lists inside quote blocks or bullet list
> inside number list) is planned.

## Collaborative editing built-in

Zefyr's document model uses data format compatible with
[Operational Transformation][ot] which makes it possible to use for
collaborative editing use cases or whenever there is a need for
conflict-free resolution of changes.

> Zefyr editor uses Quill.js **Delta** as underlying data format. Read
> more about Zefyr and Deltas in our [documentation][data_and_document].
> Make sure to checkout [official documentation][delta] for Delta format
> as well.

[delta]: https://quilljs.com/docs/delta/
[ot]: https://en.wikipedia.org/wiki/Operational_transformation