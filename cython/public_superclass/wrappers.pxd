# This declares an extension type that will be exported via Python's capsules.
# The type and object specifiers are needed for this to work at all.
# The type specifier creates a type object corresponding to the class
# that's getting created.
# The object specifier controls the name of the extension type's struct
# representation in the headers that Cython generates to represent
# the extension type.
cdef api class thing[type thing_type, object thing_pyobject]:
    # This demonstrates a different feature.
    # If an attribute that can be automatically converted to and from Python is
    # declared as public, as is the case here, it automatically becomes a
    # property at the Python level. If it is declared public, it is writable.
    # If it is declared readonly, it cannot be modified in Python.
    cdef public int val
    # Include the signature (including exception specifications) for functions
    # and methods that are not declared inline.
    # Api functions and methods, as of this writing, cannot be
    # declared inline as well.
    # Both api and inline functions can be cimported.
    cdef api void increment(thing self)
    cdef api inline void decrement(thing self):
        self.val -= 1

cdef api void api_func()

cdef inline void inline_func():
    cdef thing a = thing(3)
    a.decrement()
    print(a)
