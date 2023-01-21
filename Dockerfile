FROM python:3.9-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN python3 -m pip install --upgrade pip
RUN pip install .[test]
RUN pip install setuptools wheel
RUN python3 setup.py sdist bdist_wheel
CMD ["python", "app.py"]