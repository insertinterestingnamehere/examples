# distutils: libraries = libdynd
# distutils: library_dirs = "c:/Program Files/libdynd/lib"
# distutils: include_dirs = "c:/Program Files/libdynd/include"

from ..cpp_print cimport cpp_print

cdef extern from "dynd/type.hpp" namespace "dynd::ndt" nogil:
    cdef cppclass type:
        type()
        type(char*)

cdef void print_type() except +:
    cdef char* s = 'int32'
    cdef type t = type(s)
    cpp_print(t)

def pyprint_type():
    print_type()
