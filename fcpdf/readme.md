# FlowCrypt .md to .pdf converter 
Bill Shadish, March 20, 2020 
Updated: April 17, 2020

## Goals:
* A bash script .md to .pdf conversion tool, including FlowCrypt
  headers and footers.
* Simpler than pandoc + latex
* No Chrome (or other browser) save functions needed.
* No Node (npm) needed.
* One step creation. :yum:
* CSS styling.
* Ability to add page breaks from the .md-side.

## (Tom) Optional, if desired?
* Add a layer for it to be done from a web page
* Add the ability to do a directory at a time
  * Within this, add the ability to pick and choose between the files to run.
* Add the ability to go .md -> .html (to edit, for example, image sizes) -> .pdf.
* See TESTING below. Do you want it tested on other things?


## Usage 

```bash
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install pandoc
$ sudo apt-get install wkhtmltopdf
```

Put **fcpdf** (*"FlowCrypt to PDF"*) in your path.
You can call it fcpdf.sh if desired.
Make it executable.

```$ chmod +x fcpdf.sh```

edit the **flowcrypt.css** file as desired.
run it.
 
```$ fcpdf readme.md readme.pdf```


You can include, or not, the .md on the first parm.
If omitted, ".md" will be added.

You can create a different output .pdf file, by supplying the second parm.

If you leave off the 2nd pdf parm, it defaults to creating a pdf of the same name as the input.

You can now run fcpdf from different folders; just by having fcpdf on your path; 
or by providing the full path to the script (~/Flowcrypt/fcpdf parm1 parm2). 
The other pieces needed, such as the header or css file, 
will be picked up from the spot that fcpdf physically resides in.


## TESTING
The ```fcpdf``` script was tested on: 
* Debian 10.3, 
* opening the .pdfs in 
  * Firefox, 
  * Falcon and 
  * Document Viewer 3.30.2


## flowcrypt.css
The .md elements can be styled with CSS *during* 
the creation of the .pdf. If you want a black & white pdf 
simply rename flowcrypt.css to flowcrypt.hold

The markdown elements map to their corresponding css styles.
For example, to style a md '```#```', you would alter the css style for ```h1```. The same for ```##``` and ```h2``` and so on.

Tables can be styled with css as well as the way &lt;code&gt; is displayed.


#### Example flowcrypt.css
```
body {
   background-color: #eeffee;
 }

h1 { color: #00ff00; } 
h2 { color: #0000ff; }
h3 { color: #ff00ff; }

code {
  color: #660000;
  background-color: #fcfcfc;
  font: courier-new;
}

```

<div style="page-break-after: always;"></div>

---
## EVERYTHING THAT FOLLOWS is from the markdown-it demo... 
#### ... to show examples of markdown and how it will convert.
```bash 
$ fcpdf readme 
```
**will create this file as readme.pdf, to see how each** 
**of the below elements will convert.**
***Anything not working below in the rendered .pdf***,  is not supported.

[https://markdown-it.github.io/](https://markdown-it.github.io/)

---

<br/>

__Advertisement :)__

- __[pica](https://nodeca.github.io/pica/demo/)__ - high quality and fast image
  resize in browser.
- __[babelfish](https://github.com/nodeca/babelfish/)__ - developer friendly
  i18n with plurals support and easy syntax.

You will like those projects!

---

# h1 Heading 8-)
## h2 Heading
### h3 Heading
#### h4 Heading
##### h5 Heading
###### h6 Heading


## Horizontal Rules

___

---

***


## Typographic replacements

Enable typographer option to see result.

(c) (C) (r) (R) (tm) (TM) (p) (P) +-

test.. test... test..... test?..... test!....

!!!!!! ???? ,,  -- ---

"Smartypants, double quotes" and 'single quotes'


## Emphasis

**This is bold text**

__This is bold text__

*This is italic text*

_This is italic text_

~~Strikethrough~~


## Blockquotes


> Blockquotes can also be nested...
>> ...by using additional greater-than signs right next to each other...
> > > ...or with spaces between arrows.


## Lists

Unordered

+ Create a list by starting a line with `+`, `-`, or `*`
+ Sub-lists are made by indenting 2 spaces:
  - Marker character change forces new list start:
    * Ac tristique libero volutpat at
    + Facilisis in pretium nisl aliquet
    - Nulla volutpat aliquam velit
+ Very easy!

Ordered

1. Lorem ipsum dolor sit amet
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa


1. You can use sequential numbers...
1. ...or keep all the numbers as `1.`

Start numbering with offset:

57. foo
1. bar


## Code

Inline `code`

Indented code

    // Some comments
    line 1 of code
    line 2 of code
    line 3 of code


Block code "fences"

```
Sample text here...
```

Syntax highlighting

``` js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
```

## Tables

| Option | Description |
| ------ | ----------- |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |

Right aligned columns

| Option | Description |
| ------:| -----------:|
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |


## Links

[link text](http://dev.nodeca.com)

[link with title](http://nodeca.github.io/pica/demo/ "title text!")

Autoconverted link https://github.com/nodeca/pica (enable linkify to see)


## Images

![Minion](https://octodex.github.com/images/minion.png)
![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

Like links, Images also have a footnote style syntax

![Alt text][id]

With a reference later in the document defining the URL location:

[id]: https://octodex.github.com/images/dojocat.jpg  "The Dojocat"


## Plugins

The killer feature of `markdown-it` is very effective support of
[syntax plugins](https://www.npmjs.org/browse/keyword/markdown-it-plugin).


### [Emojies](https://github.com/markdown-it/markdown-it-emoji)

> Classic markup: :wink: :crush: :cry: :tear: :laughing: :yum:
>
> Shortcuts (emoticons): :-) :-( 8-) ;)

see [how to change output](https://github.com/markdown-it/markdown-it-emoji#change-output) with twemoji.


### [Subscript](https://github.com/markdown-it/markdown-it-sub) / [Superscript](https://github.com/markdown-it/markdown-it-sup)

- 19^th^
- H~2~O


### [\<ins>](https://github.com/markdown-it/markdown-it-ins)

++Inserted text++


### [\<mark>](https://github.com/markdown-it/markdown-it-mark)

==Marked text==


### [Footnotes](https://github.com/markdown-it/markdown-it-footnote)

Footnote 1 link[^first].

Footnote 2 link[^second].

Inline footnote^[Text of inline footnote] definition.

Duplicated footnote reference[^second].

[^first]: Footnote **can have markup**

    and multiple paragraphs.

[^second]: Footnote text.


### [Definition lists](https://github.com/markdown-it/markdown-it-deflist)

Term 1

:   Definition 1
with lazy continuation.

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.

_Compact style:_

Term 1
  ~ Definition 1

Term 2
  ~ Definition 2a
  ~ Definition 2b


### [Abbreviations](https://github.com/markdown-it/markdown-it-abbr)

This is HTML abbreviation example.

It converts "HTML", but keep intact partial entries like "xxxHTMLyyy" and so on.

*[HTML]: Hyper Text Markup Language

### [Custom containers](https://github.com/markdown-it/markdown-it-container)

::: warning
*here be dragons*
:::
