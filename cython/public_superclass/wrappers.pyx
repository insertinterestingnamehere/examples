# If the api declaration is in the pxd, it isn't needed here.
cdef class thing:

    def __init__(thing self, int v):
        self.val = v

    def __repr__(thing self):
        return str(self.val)

    cdef void increment(thing self):
        self.val += 1

# An api-declared function to test that api-declared functions
# can be cimported.
# The api declaration here isn't really needed, but it doesn't hurt.
cdef api void api_func():
    cdef thing a = thing(1)
    a.increment()
    print(a)
