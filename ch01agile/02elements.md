Theory 1: Elements of Agile Processes
=====================================

Elements of agile
-----------------

* Continuous delivery
* Self-organising teams
* Iterative development
* Living design

Ongoing Design
--------------

Agile development doesn't eschew design.

Design documents *must* still be written, but treated as

**living design documents**.

updated as more insight is gained into the task, as work is done,
and as requirements change.

Use of a Wiki or version control repository to store design documents
thus works much better than using Word documents!

**Test-driven design** and **refactoring** are essential techniques to ensure
that lack of "Big Design Up Front" (**BDUF**) doesn't produce badly constructed
spaghetti software which doesn't meet requirements.

By continuously
scouring our work for **smells**, and stopping to refactor, we evolve
towards a well-structured design with weakly interacting units.

By **starting with tests** which describe how our system should behave,
we create verifiable specifications, giving us confidence that
the work does what it is supposed to.

User Stories
------------

There are programming tools that enable tests to be automatically run
against code, but even without these, formalising test criteria to be run
to validate an output can be a helpful design tool. One useful approach is
to phrase these as "user stories".

"As a clinician, when I finish an analysis, a report will be created
about the test results, so that I can send it to the patient."

This uses a formalism called "Gherkin":

As a **role**, when **condition or circumstance** applies I
want a **goal or desire** so that **benefits occur**.

Iterative Development
---------------------

Agile development maintains a

**backlog** or **burndown**

of features to be completed
and bugs to be fixed.

In each

**sprint** or **iteration** or **cycle**

we start with a meeting where we decide which backlog tasks will be
attempted during the development
cycle, estimating how long each will take, and selecting an achievable
set of goals for the sprint.

If a task is too large to fit into one cycle, it should be broken down into
pieces that *do* fit within a cycle.

At the end of each cycle, we review the
goals completed and missed, and consider what went well, what went
badly, and what could be improved.

We try not to add work to a cycle mid-sprint. New tasks that emerge
are added to the backlog, and considered in the next
planning meeting. This reduces stress and distraction.

Cycles last between one week and a month, depending on taste. Most teams find
two weeks to be a good choice.

Continuous Delivery
-------------------

In agile development, we try to get as quickly as possible to a product that
basically works can be demonstrated to clients. This is called a

**minimum viable product**

A regular demo of progress to clients at the end of each development
iteration says so much more than sharing a design document.
"Release early, release often" is a common slogan.
Most bugs are found by people using what we make -- so exposing
work to users as early as possible will help find bugs quickly.

The key finding here is that so long as forward momentum is maintained through
a *cadence* or rhythm of delivery, the product improves and project progresses.

We do *not* try to design a fictitious schedule that will ensure that
all our current desires
will be completed by an imagined project end date in several months' time.
What matters is to find a consensus about
the **most important next thing to do now**.

Self-organising teams
---------------------

People work best when they feel ownership and pride in their work.
Division of responsiblities into architects and builders
results in a "Code Monkey" role, where the craftspersonship and sense of
responsibility for code quality is lost.

Agile approaches encourage programmers, designers, **customer**,
and businesspeople to see themselves as one team, working together,
with fluid roles, engaging in a process if *co-design* and prioritising work
together each sprint.

Workers assign to themselves, as a community,
issues from the backlog according
to interest, aptitude, and community spirit.

Regular checkins amongst the whole team ensure that we follow the maxim

**don't go dark**

so that contributions always match the consensus prioritisation.

However, agile teams make a clear separation between the members of the
project team, who are committed to delivery of the project, and other
stakeholders, who should be consulted.

The RACI model can be useful here:

* Responsible: The people who do the work to achieve the task.
* Accountable: The person who is accountable for the correct and thorough completion of the task.
* Consulted: The people who provide information for the project and with whom there is two-way communication.
  This is usually several people, often subject matter experts.
* Informed: The people kept informed of progress and with whom there is one-way communication.
  These are people that are affected by the outcome of the tasks, so need to be kept up-to-date.
