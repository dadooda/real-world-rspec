
# Примеры RSpec из реального мира

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Что это?](#что-это)
- [Установка](#установка)
- [Применение](#применение)
  - [Через Ripgrep](#через-ripgrep)
  - [Через Grep](#через-grep)
  - [Обновляем исходники](#обновляем-исходники)
  - [Расширения shell](#расширения-shell)
- [Приглашаю к соавторству](#приглашаю-к-соавторству)
- [Помогите распространить](#помогите-распространить)
- [Copyright](#copyright)

<!-- /code_chunk_output -->

## Что это?

🆎 *An English version of this text is also available: [README.md](README.md).*

Это — набор живых open source Rails-приложений и библиотек Ruby с качественными RSpec-тестами.
Разработчики могут использовать эти исходники для обучения и быстрого поиска нужных примеров
кода и тестов.

## Установка

> 💡 *Предполагается, что Git у вас есть.*

Клонируем репозиторий:

```sh
git clone git@github.com:dadooda/real-world-rspec.git
```

Скачиваем подмодули (⏳придётся подождать):

```sh
cd real-world-rspec &&
./Install

```

Когда спросят, отвечаем `Y`.

## Применение

Исходники находятся в [apps/](apps) и [libs/](libs).
Прямые ссылки (symlinks) на RSpec-тесты находятся в [q/](q).

### Через Ripgrep

Лучший инструмент для поиска в коде — это [Ripgrep](https://blog.burntsushi.net/ripgrep/).
Он поставляется в виде пакетов в большинстве современных Linux-дистрибуций.
Наберите `rg` и следуйте подсказкам.

Ищем в RSpec-тестах:

```sh
cd q &&
rg --color=always -Ln expect.+raise_error | less -S

```

Ищем в полных Rails-приложениях:

```sh
cd apps &&
rg --color=always -Ln validates.+presence.+true | less -S

```

Хороший обзор опций и основных сценариев приводит Мариус Шульц
[в своей статье про Ripgrep](https://mariusschulz.com/blog/fast-searching-with-ripgrep).

### Через Grep

Ищем в RSpec-тестах:

```sh
cd q &&
egrep --color=always -nR expect.+raise_error | less -S

```

Ищем в полных Rails-приложениях:

```sh
cd apps &&
egrep --color=always -nR validates.+presence.+true | less -S

```

### Обновляем исходники

Поскольку многие из подключенных исходников активно разрабатываются, неплохо время от времени их обновлять.
Делаем это так:

```sh
./Update
```

### Расширения shell

В состав проекта входят расширения для Unix-шелла, которые могут оказаться полезными.
Расширения находятся в [shell/](shell). Чтобы загрузить их, выполняем команду:

```sh
. shell/all.sh
```

> ⚠️ *На данный момент поддерживается только Bash.*

Краткое описание расширений:

Команда | Файл | Действие
-|-|-
`c`|`less.sh`|Листаем `/path/to/file[:line]` прямиком из буфера обмена Windows (под WSL).
`rc`|`rg.sh`|`rg` с цветами и нужными опциями.
`wsl-clip`|`clipboard.sh`|Сохраняем/вынимаем содержимое буфера обмена Windows (под WSL).

## Приглашаю к соавторству

Присылайте ваши дополнения, в особенности ссылки на большее количество приложений и библиотек
с качественными RSpec-тестами.

## Помогите распространить

Если продукт вам понравился, поставьте звёдочку⭐, расскажите другу, упомяните на форумах и в соцсетях.
Я не делаю с продукта никакого дохода, просто катастрофически нет возможности заниматься саморекламой.
Если чуть больше единомышленников будут пользоваться продуктом и помогать его развитию, нам всем будет клёво.

## Copyright

Продукт распространяется свободно на условиях лицензии MIT.

— © 2023-2024 Алексей Фортуна
