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
