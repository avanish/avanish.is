---
title: OpenCV Installation
date: 2019-01-16 09:17:10
tags:
---

# Setup OpenCV on Windows

### Verify installation of python and pip with

``` bash
C:\> python -V
C:\> pip -V
```

### Install Virtual Environment

``` bash
C:\> pip install virtualenv
```

### Setup virtualenv in your workspace

``` bash
C:\> cd your_workspace
C:\your_workspace> virtualenv venv 
C:\your_workspace> \venv\Scripts\activate.bat 
```

Once you activate the virtual environment, you should see `(venv)` appear before `C:\your_workspace>`

### Install OpenCV

``` bash
(venv) C:\your_workspace> pip install numpy
(venv) C:\your_workspace> pip install opencv-python
```

### Test OpenCV Installation

Create a new file `main.py` and write the following command

``` python
import cv2
print(cv2.__version__)
```

Run the file in command line with

``` bash
(venv) C:\your_workspace> python main.py
```

### Deactivate virtualenv

``` bash
(venv) C:\your_workspace> deactivate
```

---
# Setup OpenCV on macOS/Linux

### Verify installation of python and pip with

``` bash
$ python -V
$ pip -V
```

### Install Virtual Environment

``` bash
$ pip install virtualenv
```

### Setup virtualenv in your workspace

``` bash
$ cd your_workspace
$ virtualenv venv 
$ . venv/bin/activate 
```

Once you activate the virtual environment, you should see `(venv)` appear before `$`. You can verify the python version inside virtual environment with

``` bash
$ python -V
Python 3.6.5
$ which python
/Users/abu/workspace/venv/bin/python
$ pip -V
pip 18.1 from /Users/abu/workspace/venv/lib/python3.6/site-packages/pip (python 3.6)
$ which pip
/Users/abu/workspace/venv/bin/pip
```

### Install OpenCV

``` bash
(venv) $ pip install numpy
(venv) $ pip install opencv-python
```

### Test OpenCV Installation

Create a new file `main.py` and write the following command

``` python
import cv2
print(cv2.__version__)
```

Run the file in command line with

``` bash
(venv) $ python main.py
```

### Deactivate virtualenv

``` bash
(venv) $ deactivate
```