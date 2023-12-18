# Simple mulecule action

Чтобы не менять везде в ролях версию `molecule`, мы решили всегда использовать ветку **master**.
Он будет подтягиваться в текущих сборках github actions.  

При обновлении этого репо, в мастер, изменения попадют только через PR.

Пример:

```yaml
- uses: uchiru/molecule-action@master
```

Релиз docker image uchiru/molecule в hub.docker.com:

```bash
bin/publish 3.3.1
```

в некоторых случаях при прокатке плейбука ( в моём случае с db.yml) происходит падение с ошибкой
```bash
ERROR! [DEPRECATED]: ansible.builtin.include has been removed. Use include_tasks or import_tasks instead. This feature was removed from ansible-core in a release after 2023-05-16. Please update your playbooks.
```
решается корректировкой requirements.txt на следующее
```bash
ansible==6.2.0
ansible-lint>=5.1.2,<6.0.0
docker>=4.3.1
pytest-testinfra>=6.3.0
yamllint==1.27.1
decorator>=4.4.1
openstacksdk>=0.56.0
molecule==4.0.3
molecule-docker>=0.2.4
molecule-vagrant>=1.0.0
sshuttle
yq
netaddr
```