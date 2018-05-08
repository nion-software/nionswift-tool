# python setup.py bdist_wheel --plat-name win-amd64

import glob
import os

from setuptools import setup

def package_files(directory):
    paths = []
    for (path, directories, filenames) in os.walk(directory):
        for filename in filenames:
            paths.append(os.path.join('..', '..', path, filename))
    return paths

extra_files = package_files('nion/nionswift_tool/windows')

modules = ["nion/nionswift_tool"]

setup(
    name='nionswift-tool',
    version='0.3.11',
    zip_safe=False,
    packages=modules,
    package_data={'': extra_files},
    url='http://www.nion.com',
    license='Apache 2.0',
    author='Nion Software Team',
    author_email='software@nion.com',
    description='Python command line access to Nion Swift Launcher',
    include_package_data=True,
    entry_points={
        'console_scripts': [
            'nionswift-tool=nion.nionswift_tool.command:main',
            ],
        },
)
