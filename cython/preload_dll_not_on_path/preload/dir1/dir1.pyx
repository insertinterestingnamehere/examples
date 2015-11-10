# distutils: libraries = libdynd
# distutils: library_dirs = "c:/Program Files/libdynd/lib"
# distutils: include_dirs = "c:/Program Files/libdynd/include"

from ..cpp_print cimport cpp_print

cdef extern from "dynd/array.hpp" namespace "dynd::nd" nogil:
    cdef cppclass array:
        array()
        array(double)

cdef void print_array() nogil except +:
    cdef array a = array(2.)
    cpp_print(a)

def pyprint_array():
    print_array()
