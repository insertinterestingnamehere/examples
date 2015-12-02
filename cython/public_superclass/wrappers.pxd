cdef api class thing[type thing_type, object thing_pyobject]:
    cdef public int val
    cdef void increment(thing self)
    cdef inline void decrement(thing self):
        self.val -= 1

cdef api void api_func()

cdef inline void inline_func():
    cdef thing a = thing(3)
    a.decrement()
    print(a)
