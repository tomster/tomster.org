---
layout: post.html
title: Hooking up grunt with mynt
categories: meta, mynt, grunt, yeoman, bower
---

During the two most recent work projects I got to appreciate the convenience that a `yeoman <http://yeoman.io>`_ based workflow can bring. So when I set out to rejuvinate this blog, I naturally tried to incorporate its goodness with the static generator I would use to power the blog.

Well, it turns out, that none of the ususal suspects of Python based site generators is really the way I'd like or need it. So my knee jerk reaction was to go ahead and write my own. Doh! But even with Python's proverbial batteries included, that's not a task for just an afternoon.

Instead, I decided to not only *tinker* with the existing tools as I did while evaluating them, but to actually *use* them (in anger, so to speak) to build this website. Starting with the top contender, this site is currently `implemented <https://github.com/tomster/tomster.org/tree/mynt>`_ using `mynt <http://mynt.mirroredwhite.com>`_. But while I was eventually able to bend it to my will, it required quite some dirty workarounds (see the `Makefile <https://github.com/tomster/tomster.org/blob/mynt/Makefile>`_ for the gory details).

Anyway, now that I have a working setup, I can continue to try other approaches in a more leisurely fashion. Next contender will be the venerable `Blogofile <http://www.blogofile.com>`_, which comes closest to my idea of a general purpose 'HTML compiler'.