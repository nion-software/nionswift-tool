from setuptools import setup

setup(
    name='nionswift-tool',
    version='0.3.19',
    packages=["nion.nionswift_tool"],
    url='http://www.nion.com',
    license='Apache 2.0',
    author='Nion Software Team',
    author_email='software@nion.com',
    description='Python command line access to Nion Swift Launcher',
    install_requires=['pywin32;platform_system=="Windows"'],
    include_package_data=True,
    entry_points={
        'console_scripts': [
            'nionswift-tool=nion.nionswift_tool.command:main',
        ],
    },
)
