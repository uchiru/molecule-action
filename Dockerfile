FROM python:3.8-slim-buster

ENV PY_COLORS=1 \
    ANSIBLE_FORCE_COLOR=1

RUN apt-get update \
    && apt-get install -y build-essential openssh-client git docker.io rsync \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade pip
RUN pip install --upgrade --user setuptools
RUN pip install Jinja2

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

CMD cd /tmp/$(basename "$PWD"); molecule ${command:-test}
