---
title: Wikis and documentation
---

# Theory session 3: Wikis and documentation
=========================================

Documentation
-------------

We need to write some documents together. We've all experienced "versioning hell"
when collaborating on document writing.

![Version control](http://www.phdcomics.com/comics/archive/phd101212s.gif)

There is a better way, using proper *version control tools*, which we will
study in this session.

WYSIWYG is a mistake
--------------------

In order to understand how to work on and manage documents together using
version control tools, it is first necessary to un-learn a common misconception:
"what you see is what you get".

Word-processors combine the 'content layer' and 'presentation layer' into
a single document. This feels very visceral and convenient, but makes it hard,
for example, to change the font of all the figure captions but nothing else!

More sophisticated publishing tools separate these layers: the web, for example
uses HTML for the content layer, and CSS for the presentation layer. Copywriting
is separated from style.

We author in a clean environment, absent presentation information, and then
stylistic content is added afterwards in a rendering step.

This choice, while seemingly irritating at first,
is essential to allow the easy presentation and *merging*
of changes from multiple authors.

The Wiki
--------

**Wikis** provide a convenient way to edit documents on the web, with
hyperlinks between
them. They offer a simple partial solution to version control, but we'll see
a more sophisticated choice later. My recommendation is to keep most
documentation in a wiki, including living design documents,
minutes from Scrum meetings, and notes about project processes.

Wikitext
--------

Wikitext formats are a simple choice for content layer information, easier
to learn than richer tools like LaTeX or HTML. There are a few choices,
including Mediawiki and Restructured Text, but markdown is a nice choice, and
we'll be using it here.
