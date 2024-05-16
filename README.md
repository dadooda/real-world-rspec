
# Real-world RSpec

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Overview](#overview)
- [Setup](#setup)
- [Usage](#usage)
  - [With Ripgrep](#with-ripgrep)
  - [With Grep](#with-grep)
  - [Updating the sources](#updating-the-sources)
  - [Shell extensions](#shell-extensions)
- [Please contribute](#please-contribute)
- [Spread a word](#spread-a-word)
- [Copyright](#copyright)

<!-- /code_chunk_output -->

## Overview

🆎 *Этот текст можно прочитать на русском языке: [README-ru.md](README-ru.md).*

This is a collection of active, open source Rails apps and Ruby libraries with
extensive RSpec coverage.
Developers can use these sources to study and look up code and test examples.

## Setup

> 💡 *It's assumed that you have Git installed.*

Clone this repository:

```sh
git clone git@github.com:dadooda/real-world-rspec.git
```

Fetch the submodules (⏳takes time):

```sh
cd real-world-rspec &&
./Install

```

When prompted, answer `Y`.

## Usage

The sources are located in [apps/](apps) and [libs/](libs).
The symlinks to the projects' RSpec tests are located in [q/](q).

### With Ripgrep

The best tool for searching in code is [Ripgrep](https://blog.burntsushi.net/ripgrep/).
Its packages are bundled with most today's Linux distributions.
Type `rg` and follow the prompt.

Search through the specs:

```sh
cd q &&
rg --color=always -Ln expect.+raise_error | less -S

```

Search through entire Rails apps:

```sh
cd apps &&
rg --color=always -Ln validates.+presence.+true | less -S

```

For more options and search scenarios, have a look at this nice
[Ripgrep overview](https://mariusschulz.com/blog/fast-searching-with-ripgrep) by Marius Shulz.
It'll give you a basic idea of what this brilliant tool is capable of.

### With Grep

Search through the specs:

```sh
cd q &&
egrep --color=always -nR expect.+raise_error | less -S

```

Search through entire Rails apps:

```sh
cd apps &&
egrep --color=always -nR validates.+presence.+true | less -S

```

### Updating the sources

Since most of the linked sources are actively developed, it might be a good idea to update them once in a while.
To do it, do a:

```sh
./Update
```

### Shell extensions

The project comes bundled with a few optional shell extensions some may find convenient.
The extensions are located in [shell/](shell). To load them all at once, do a:

```sh
. shell/all.sh
```

> ⚠️ *Only Bash is supported at the moment.*

Here's a brief summary:

Command | File | Action
-|-|-
`c`|`less.sh`|Paginate `/path/to/file[:line]` directly from Windows clipboard (under WSL).
`rc`|`rg.sh`|`rg` with colors and other friendly options baked in.
`wsl-clip`|`clipboard.sh`|Store/retrieve from Windows clipboard (under WSL).

## Please contribute

All contributions are welcome, esp. references to more applications and libraries with high-quality
RSpec tests in place.

## Spread a word

If you like this product, please star⭐ it, mention it to your friends, on forums and social media.
I make no profit from it, I just want more like-minded people to use it and contribute to it to the
world's benefit.

## Copyright

The product is free software distributed under the terms of the MIT license.

— © 2023-2024 Alex Fortuna
