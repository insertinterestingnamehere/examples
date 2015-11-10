cdef extern from "iostream" nogil:
    # This is a hack to make the example simpler.
    # Think of this as whatever C/C++ thing you need to call out of the dll.
    cdef void cpp_print "std::cout <<"(...) except +
