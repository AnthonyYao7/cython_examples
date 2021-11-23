#cython: language_level=3

cimport numpy as np

cdef extern from "calling_c.h":
	double c_dot(double* a, double* b, int n)

def dot(np.ndarray[np.float64_t, ndim=1, mode='c'] a, np.ndarray[np.float64_t, ndim=1, mode='c'] b) -> double:
	assert a.shape[0] == b.shape[0]

	return c_dot(<double*> a.data, <double*> b.data, a.shape[0])