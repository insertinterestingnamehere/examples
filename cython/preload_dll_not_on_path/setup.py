from distutils.core import setup
from Cython.Build import cythonize

modules=cythonize(["preload/dir1/*.pyx", "preload/dir2/*.pyx"], language='c++')
packages = ['preload', 'preload.dir1', 'preload.dir2']
package_data = {package:['*.pxd'] for package in packages}

setup(
    ext_modules=cythonize(["preload/dir1/*.pyx", "preload/dir2/*.pyx"],
                          language='c++'),
    packages = packages,
    package_data = package_data
    )
