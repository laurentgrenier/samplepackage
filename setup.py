import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="samplepackage",
    version="0.0.1",
    author="Laurent Grenier",
    author_email="laurent@mooke.io",
    description="A small sample package",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/laurentgrenier/samplepackage",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
)