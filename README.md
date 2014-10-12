# ini-mode - Major mode for Windows-style ini files

*Author:* Anders Lindgren<br>
*Version:* 0.0.2<br>
*URL:* [https://github.com/Lindydancer/ini-mode](https://github.com/Lindydancer/ini-mode)<br>

Major mode for Windows-style ini files.

## Features

* Highlight support.
* Inherits from `prog-mode`. The effect is that global minor modes
  that activates themsleves in `prog-mode` buffers automatically
  work in `ini-mode`.

## Background

There are many implementation of major modes for ini files. This is
my attempt at a modern, simple, implementation.

## Installation

This package is designed to be installed as a "package". Once
installed, it is automatically used when opening files the .ini
extension.

Anternatively, you can place the following lines in a suitable
initialization file:

        (autoload 'ini-mode "ini-mode" nil t)
        (add-to-list 'auto-mode-alist '("\\.ini\\'" . ini-mode))

## Supported Emacs Versions

This package is designed for Emacs 24. However, with the help of
the companion package [old-emacs-support][1] it can be used with
earlier Emacs versions, at least from Emacs 22.

[1]: https://github.com/Lindydancer/old-emacs-support


---
Converted from `ini-mode.el` by [*el2markdown*](https://github.com/Lindydancer/el2markdown).
