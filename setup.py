ifrom setuptools import setup, find_packages

setup(
    name='pix',
    version='1.0.0',
    packages=find_packages(),
    install_requires=[
        # List your dependencies here
    ],
    entry_points={
        'console_scripts': [
            'pix = pix.cli:main',  # Replace 'pix' with your desired command name
        ],
    },
)

