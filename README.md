# njb -- New Jerusalem Bible on the Command Line

A command line tool for searching and reading the New Jerusalem Bible.

Format and original implementation from [bontibon/kjv](https://github.com/bontibon/kjv). Also a derivative of [lukesmithxyz/vul](https://github.com/LukeSmithxyz/vul).

## Usage

    usage: ./njb [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

## Install

```
git clone https://github.com/thenewmantis/njb.git
cd njb
sudo make install
```

## License

The script is in the public domain.
