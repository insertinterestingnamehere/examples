# This module is a small self-contained example that can be used to show
# when a dll loaded by another module can (and can't) be used by a given
# extension module.

# As the code stands right now, the dll should be usable, but only if
# the other module that loads the dll has already been imported.
# This will also load fine if the needed dll is already on the path.

# distutils: libraries = libdynd
# distutils: library_dirs = "c:/Program Files/libdynd/lib"
# distutils: include_dirs = "c:/Program Files/libdynd/include"

from preload.dir1.dir1 cimport print_array as print_array
from preload.cpp_print cimport cpp_print

cdef extern from "dynd/type.hpp" namespace "dynd::ndt" nogil:
    cdef cppclass type:
        type()
        type(char*)

cdef void print_type() except +:
    cdef char* s = 'int32'
    cdef type t = type(s)
    cpp_print(t)

def pyprint_array_and_type():
    print_array()
    print
    print_type()
