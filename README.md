# senseBox version 2 Books

This repository contains the gitbook sources for the documentation and OER regarding <b>only the second version of senseBox</b> that comes with the senseBox MCU instead of Arduino/Genuino Uno.

![senseBox v2 uses sensebox MCU](https://github.com/sensebox/books-v2/raw/master/senseBoxv2.png)
 
There are seperate branches for each book inside this repository. These books are [gitbooks](https://www.gitbook.com) consisting of markdown files. 
There are four books until now:
- <b>[senseBox:edu-book](https://github.com/sensebox/books-v2/tree/edu)</b> in branch called "edu" hosted [here](https://sensebox.github.io/books-v2/edu).
- <b>[senseBox:home-book](https://github.com/sensebox/books-v2/tree/home)</b> in branch called "home" hosted [here](https://sensebox.github.io/books-v2/home).
- <b>[senseBox:osem-book](https://github.com/sensebox/books-v2/tree/osem)</b> in branch called "osem" hosted [here](https://sensebox.github.io/books-v2/osem).
- <b>[senseBox:blockly-book](https://github.com/sensebox/books-v2/tree/blockly)</b> in branch called "blockly" hosted [here](https://sensebox.github.io/books-v2/blockly).

Additionally, there is a <b>[gh-pages branch](https://github.com/sensebox/books-v2/tree/gh-pages)</b>.
This is where all the builded gitbooks are stored as static html files and hosted from. 

To avoid redundant data all pictures used in all senseBox books are stored in one single pictures-folder in the gh-pages branch instead of directly inside each book branch.

## Contribution 

### Development environment
We use the node.js-based tool [GitBook](https://github.com/GitbookIO/gitbook) for rendering of the content.

### Setup of Gitbook
To live-preview or render a book, you need the npm package `gitbook-cli`.
Follow these instructions or have a look at the [official documentation](https://github.com/GitbookIO/gitbook/blob/master/docs/setup.md).

1. Install node.js and npm package.
```
 # Mac OSX.
 $ brew install node npm

 # Ubuntu.
 $ sudo apt-get install nodejs npm
```

2. Install n with npm.
```
 $ sudo npm install n -g
```

3. Downgrade node.js to v5.12.0. (see Build error with node v6 · Issue #1)
```
 $ n 5.12.0        
```

4. Install gitbook-cli package.
```
 $ sudo npm install -g gitbook-cli
```

Clone this repository with the following command:
```
$ git clone https://github.com/sensebox/books-v2.git
```
to your computer. Change into the created folder with:
```
$ cd books-v2
```

#### Live preview
To get a live preview of a books website-output, run:
```
gitbook install   # only required once
gitbook serve
```

#### Export as PDF
To get a PDF version of a book you need to follow these instructions in addition to the setup of github (see above):

1. Install necessary package with npm.
```
 $ gitbook install
```

2. Check version.
```
 $ gitbook -V
CLI version: 2.3.0
GitBook version: 3.1.1
```

3. Install [calibre](https://calibre-ebook.com/download) for build pdf, epub and mobi.

4. Link calibre command line tool.
```
 # neccessary in Mac OSX only
 $ ln -s /Applications/calibre.app/Contents/MacOS/ebook-convert /usr/local/bin/
```


5. Run the following commands:
```
git checkout <BRANCH_NAME> # use either `home` or `edu` as branch_name
gitbook ./ <BOOK_NAME>.pdf  # choose your pdf name here
```


#### Render to disk
GitBook provides the output formats `website`, `pdf` and `ebook`.
To render a book run:
```
gitbook install   # only required once

gitbook build     # build the website
gitbook pdf       # build the pdf
gitbook epub      # build the ebook
```

## Repository structure
Each (multilingual) book resides on its own branch.
Currently these are `edu`,`home`, `osem` and `blockly`, each containing a `de` and `en` language book.

The german versions have more content, while the english versions are steadily supplemented from there.

Files that are parsed specially by GitBook have a filename in caps:

- `LANGS.md`:  defines the languages of a multilingual book
- `README.md`: the landingpage of a book, eg an introduction
- `SUMMARY.md`: the table of contents, rendered as the left navbar
- `GLOSSARY.md`: a glossary, whose terms are referenced on all other book pages
- `FOOTER.md`: the page footer on any page

Stylesheets applied on all books are in `./styles`, and are symlinked into each book (unix only).

### Deployment
Currently the books are built and hosted by [gitbook.com](https://sensebox.github.io/books-v2/).
A commit on each of the <bookname> branches does not automatically trigger a new build of the book there.
Instead the builds of a book will be renewed by senseBox staff. Please keep in mind, to store all pictures in the gh-pages branch and not in the book's branch itself.

The pdf builds however are built on travis to support custom cover pages. These builds are autocommited into the `gh-pages` branch.

## License
- Content: [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)
- Code: Apache

See [LICENSE](https://github.com/sensebox/books-v2/raw/master/LICENSE) file.
