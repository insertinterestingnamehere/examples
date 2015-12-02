cdef class thing:

    def __init__(thing self, int v):
        self.val = v

    def __repr__(thing self):
        return str(self.val)

    cdef void increment(thing self):
        self.val += 1

cdef api void api_func():
    cdef thing a = thing(1)
    a.increment()
    print(a)
