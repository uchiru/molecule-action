FROM quay.io/ansible/molecule:3.0.4

ENV PY_COLORS=1
ENV ANSIBLE_FORCE_COLOR=1

CMD cd ${GITHUB_REPOSITORY:-/tmp/$(basename "$PWD")}; molecule ${command:-test}
