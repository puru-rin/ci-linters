# Linters using docker


#### **hadolint** for *Dockerfiles*
#### **yapf** for *python* files
#### **yamllint** for *YAML* files
________
##### 1. Copy a Dockerfile from this repository.
##### 2. Run a shell script `lint.sh`

```sh
bash ./lint.sh 
```
________
**Example of output:**

```
--------------------------DOCKERFILE-----------------------------

 /etc/linterdocker/repo/pythontest/Dockerfile
-:3 DL3013 warning: Pin versions in pip. Instead of `pip install <package>` use `pip install <package>==<version>` or `pip install --requirement <requirements file>`
-:3 DL3042 warning: Avoid use of cache directory with pip. Use `pip install --no-cache-dir <package>`
-:5 DL3013 warning: Pin versions in pip. Instead of `pip install <package>` use `pip install <package>==<version>` or `pip install --requirement <requirements file>`
-:5 DL3059 info: Multiple consecutive `RUN` instructions. Consider consolidation.
-:5 DL3018 warning: Pin versions in apk add. Instead of `apk add <package>` use `apk add <package>=<version>`
-:10 DL3042 warning: Avoid use of cache directory with pip. Use `pip install --no-cache-dir <package>`
-:10 DL3013 warning: Pin versions in pip. Instead of `pip install <package>` use `pip install <package>==<version>` or `pip install --requirement <requirements file>`
-:10 DL3059 info: Multiple consecutive `RUN` instructions. Consider consolidation.
--------------------------YAMLLINT-------------------------------

 /etc/linterdocker/repo/pythontest/test.yml
stdin
  1:1       warning  missing document start "---"  (document-start)
  1:9       error    too many spaces after colon  (colons)
  5:1       error    wrong indentation: expected 2 but found 0  (indentation)
  5:10      error    too many spaces after colon  (colons)
  6:9       error    too many spaces after colon  (colons)
  7:1       error    trailing spaces  (trailing-spaces)
  8:1       error    trailing spaces  (trailing-spaces)
  10:1      error    trailing spaces  (trailing-spaces)
  16:1      error    trailing spaces  (trailing-spaces)

----------------------------YAPF----------------------------------

 /etc/linterdocker/repo/pythontest/test.py
x = {'a': 37, 'b': 42, 'c': 927}

y = 'hello ' 'world'
z = 'hello ' + 'world'
a = 'hello {}'.format('world')


class foo(object):

    def f(self):
        return 37 * -+2

    def g(self, x, y=42):
        return y


def f(a):
    return 37 + -+a[42 - x:y**3]
```
