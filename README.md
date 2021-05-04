# Simple mulecule action

Чтобы не менять везде в ролях версию molecule мы тут перевешиваем тег **v1** на последний релизный коммит.
Он и будет подтягиваться в текущих сборках github action.
Пример:
```yaml
- uses: uchiru/molecule-action@v1
```

Релиз docker image
```
bin/publish 3.1.5
```
