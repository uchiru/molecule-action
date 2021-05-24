FROM python:3.8-slim-buster

ENV PY_COLORS=1 \
    ANSIBLE_FORCE_COLOR=1

RUN apt-get update \
    && apt-get install -y build-essential openssh-client git \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

CMD cd ${GITHUB_REPOSITORY:-/tmp/$(basename "$PWD")}; molecule ${command:-test}
