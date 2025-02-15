.. _ref_eql_expr_func_call:


Functions
=========


EdgeDB provides a number of functions in the :ref:`standard library
<ref_std>`. It is also possible for users to :ref:`define their own
<ref_eql_sdl_functions>` functions.

The syntax for a function call is as follows:

.. eql:synopsis::

    <function_name> "(" [<argument> [, <argument>, ...]] ")"

    # where <argument> is:

    <expr> | <identifier> := <expr>


Here :eql:synopsis:`<function_name>` is a possibly qualified name of a
function, and :eql:synopsis:`<argument>` is an *expression* optionally
prefixed with an argument name and the assignment operator (``:=``)
for :ref:`named only <ref_eql_sdl_functions_syntax>` arguments.

For example, the following computes the length of a string ``'foo'``:

.. code-block:: edgeql-repl

    db> SELECT len('foo');
    {3}

And here's an example of using a *named only* argument to provide a
default value:

.. code-block:: edgeql-repl

    db> SELECT array_get(['hello', 'world'], 10, default := 'n/a');
    {'n/a'}
