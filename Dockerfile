FROM quay.io/ansible/molecule:3.1.5

ENV PY_COLORS=1
ENV ANSIBLE_FORCE_COLOR=1

RUN pip install openstacksdk

CMD cd ${GITHUB_REPOSITORY:-/tmp/$(basename "$PWD")}; molecule ${command:-test}
