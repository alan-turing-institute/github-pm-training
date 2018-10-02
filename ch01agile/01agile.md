Introduction: Agile Project Management
==========================================

Waterfall
---------

* Requirements
* Functional Design
* Architectural Design
* Implementation
* integration

Waterfall
----------

The Waterfall design philosophy argues that the elements of design
should occur in order: first requirements capture, then functional design,
then architectural design. This approach is based on the idea that if a
mistake is made in the design, then programming effort is wasted, so
significant effort is spent in trying to ensure that requirements are
well understood and that the design is correct before programming starts.

Why Waterfall?
--------------

Without a design approach, programmers resort to designing as we go,
typing in code, trying what works, and making it up as we go along.
When trying to collaborate to make software with others this can
result in lots of wasted time, software that only the author understands,
components built by colleagues that don't work together, or code that
the programmer thinks is nice but that doesn't meet the user's requirements.

Document Driven Design
----------------------

Waterfall's key idea was to introduce a 'document driven' design process:
each step is carefully written down, with the architecture locked in and
formally agreed before programming begins.

Why wasn't waterfall enough?
----------------------------

Waterfall results in a contractual approach to development,
building an us-and-them relationship between users, business types,
designers, and programmers.

> I built what the design said, so I did my job.

Waterfall results in a paperwork culture, where people spend a long time
designing standard forms to document each stage of the design, with
less time actually spent making things.

Waterfall results in excessive adherence to a plan, even when mistakes in the
design are obvious to people doing the work.

Software is not made of bricks
------------------------------

The waterfall approach to software engineering comes from the engineering
tradition applied to building physical objects, where Architects and
Engineers design buildings, and builders build them according to the design.

IT work, and much of our development of business systems
and processes, is intrinsically different:

>Software is not the same 'stuff' as that from which physical systems are
constructed. Software systems differ in material respects from physical systems.
Much of this has been rehearsed by Fred Brooks in his classic
'No Silver Bullet' paper. First, complexity and scale are different
in the case of software systems: relatively functionally simple
software systems comprise more independent parts, placed in
relation to each other, than do physical systems of equivalent
functional value.

>Second, and clearly linked to this, we do not
have well developed components and composition mechanisms from
which to build software systems (though clearly we are working
hard on providing these) nor do we have a straightforward
mathematical account that permits us to reason about the
effects of composition.

>Third, software systems operate in a domain determined principally by
arbitrary rules about information and symbolic communication whilst the
operation of physical systems is governed by the laws of physics.
Finally, software is readily changeable and thus is changed, it is
used in settings where our uncertainty leads us to
anticipate the need to change.

-- Prof. Anthony Finkelstein

The Agile Manifesto
-------------------

In 2001, authors including Martin Fowler, Ward Cunningham and Kent Beck
met in a Utah ski resort, and published the following manifesto.

[Manifesto for Agile Software Development](http://agilemanifesto.org/)

We are uncovering better ways of developing software by doing it and
helping others do it. Through this work we have come to value:

**Individuals and interactions** over processes and tools
**Working software** over comprehensive documentation
**Customer collaboration** over contract negotiation
**Responding to change** over following a plan

That is, while there is value in the items on the right,
we value the items on the left more.

Agile is not absence of process
-------------------------------

The Agile movement is not anti-methodology, in fact, many of us want to
restore credibility to the word methodology. We want to restore a balance.
We embrace modeling, but not in order to file some diagram in a dusty
corporate repository. We embrace documentation, but not hundreds of
pages of never-maintained and rarely-used tomes. We plan, but recognize
the limits of planning in a turbulent environment. Those who would brand
proponents of XP or SCRUM or any of the other Agile Methodologies
as "hackers" are ignorant of both the methodologies and the
original definition of the term hacker.

-- Jim Highsmith.
