# Сервис для быстрого создания страниц

Сервис быстрого создания страниц позволяет любому вошедшему на сайт пользователю без регистрации создать блок или статью, предварительно отредактировав ее в прикрученном к проекту редакторе текста.
Каждому создателю статьи присваевается уникальный адрес статьи/блога (slug) и пароль для редактирования, который генерируется и хешируется.

* Ruby 2.3.3
* Rails 5.0.1
* Postgresql

Использовались:

* Ckeditor (https://github.com/galetahub/ckeditor)
* Bootstrap-Sass (https://github.com/twbs/bootstrap-sass)
* FriendlyId + SecureRandom для генерации уникального и читабельного url'a






