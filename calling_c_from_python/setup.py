from setuptools import Extension, setup
from Cython.Build import cythonize
import numpy as np

# run: python setup.py build_ext --inplace

setup(
    name="calling c example",
    ext_modules=cythonize(
        [Extension("calling_c", ["calling_c_py.pyx", 'calling_c.c'])]
    ),
    include_dirs = [np.get_include(), 'include'],
)
