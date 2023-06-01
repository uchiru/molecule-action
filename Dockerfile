FROM python:3.10-slim-buster

ENV PY_COLORS=1 \
    ANSIBLE_FORCE_COLOR=1

RUN apt-get update \
    && apt-get install -y build-essential openssh-client git docker.io rsync \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt
RUN ansible-galaxy collection install -r collections-req.yml

CMD cd ${GITHUB_REPOSITORY:-/tmp/$(basename "$PWD")}; molecule ${command:-test}
