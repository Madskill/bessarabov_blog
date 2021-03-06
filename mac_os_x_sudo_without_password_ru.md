# Как сделать чтобы sudo работал без пароля на Mac OS X

```
{
    "date_time_msk" : "2017-05-03 22:36:37"
}
```

Некоторые команды в консоли Mac OS X требует запуска под sudo.
Я периодически правлю /etc/hosts и для этого я запускаю:

    sudo vi /etc/hosts

Еще у меня есть скрипты online/offline с помощью
которых я могу просто включать/выключать интернет на
ноутбуке из консоли (подробности в заметке
«[Как просто и быстро отключить/включить интернет на Mac OS](https://ivan.bessarabov.ru/blog/mac-os-internet-switch-on-off))».
Эти скрипты тоже нужно запускать под sudo.
Вот пример их запуска:

    sudo online; git push origin master; sudo offline

По умолчанию Mac OS X требует пароль на первый запуск sudo,
а потом позволяет некоторое время запускать команды под sudo
без пароля. Но мне хочется чтоб даже первый запуск sudo не
требовал пароля.

И это очень просто изменить. Для этого следует поправить файл

    sudo vi /etc/sudoers

в этом файле надо найти строчку:

    %admin ALL=(ALL) ALL

эту строку удалить или закомментировать, а вместо нее написать:

    %admin ALL=(ALL) NOPASSWD: ALL

И после сохранения этого изменения в файле /etc/sudoers sudo на Mac OS X перестанет просить пароль.
