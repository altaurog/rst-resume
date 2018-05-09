reStructuredText Resume
=======================

Generate a nice-looking pdf resume from reStructuredText_ source
using rst2latex and pdflatex.

.. _reStructuredText: http://docutils.sourceforge.net/rst.html

Resume source like this:

.. code:: ReST


    ======================
    Nathan Davis
    ======================

    .. include:: utils.rst

    :email:`ndavis@example.com`

    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod


    Experience
    ----------

    2011 - 2014
        :description:`Marketing Specialist`
        :organization:`Lecor Technologies`
        :location:`Mesquite, TX`

        * Ut labore et dolore magna aliqua.
        * Ut enim ad minim veniam, quis nostrud exercitation ullamco
          laboris nisi ut aliquip ex ea commodo consequat.
        * Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur.

    2007 - 2011
        :description:`Salesclerk`
        :organization:`JC Penney`
        :location:`Richardson, TX`

        * Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
          officia deserunt mollit anim id est laborum.

    Education
    ----------
    2006
        :description:`B.A. Political Science`
        :organization:`Texas A&M University`
        :location:`College Station, TX`

Will produce pdf output like this:

.. image:: example.jpg
