# Simple mulecule action

Чтобы не менять везде в ролях версию `molecule`, мы перевешиваем тег **v1** на последний релизный коммит.
Он будет подтягиваться в текущих сборках github actions.  
Пример:

```yaml
- uses: uchiru/molecule-action@v1
```

Релиз docker image:

```bash
bin/publish 0.1.2
```
