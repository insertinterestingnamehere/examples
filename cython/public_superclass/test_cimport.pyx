from __future__ import print_function
from wrappers cimport thing, api_func, inline_func

# This module tests that cimporting api declared functions and extension types
# works properly.

def test_func():
    api_func()
    inline_func()
    cdef thing a = thing(2)
    print(a)
    a.increment()
    print(a)
    a.decrement()
    print(a)
