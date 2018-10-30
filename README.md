# Sample Package

This is a simple example package. You can use
[Github-flavored Markdown](https://guides.github.com/features/mastering-markdown/)
to write your content.

## Prerequisites
Make sure you have the latest versions of setuptools and wheel installed:

### Install from requirements
Just run the command below:
```python
python3 -m pip install -r requirements.txt
```

### Install manually
If you prefer to install all by yourself, run the command below:

```python
python3 -m pip install --user --upgrade setuptools wheel
```

> Tip IF you have trouble installing these, see the [Installing Packages tutorial](https://packaging.python.org/tutorials/installing-packages).


## Generating distribution archives
The first step is to generate distribution packages for the package. These are archives that are uploaded to the Package Index and can be installed by pip.

Run this command from the same directory where setup.py is located:

```python
python3 setup.py sdist bdist_wheel
```

This command should output a lot of text and once completed should generate two files in the dist directory:

```text
dist/
  example_pkg-0.0.1-py3-none-any.whl
  example_pkg-0.0.1.tar.gz
```

> Note If you run into trouble here, please copy the output and file an issue over on [packaging problems](https://github.com/pypa/packaging-problems/issues/new?title=Trouble+following+packaging+libraries+tutorial) and we’ll do our best to help you!

The *tar.gz* file is a [source archive](https://packaging.python.org/glossary/#term-source-archive) whereas the *.whl* file is a [built distribution](https://packaging.python.org/glossary/#term-built-distribution). Newer [pip](https://packaging.python.org/key_projects/#pip) versions preferentially install built distributions, but will fall back to source archives if needed. You should always upload a source archive and provide built archives for the platforms your project is compatible with. In this case, our example package is compatible with Python on any platform so only one built distribution is needed.

