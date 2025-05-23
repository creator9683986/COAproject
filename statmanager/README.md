# Stat Service

## Описание
Stat Service предназначен для сбора, подсчёта и анализа статистических данных о действиях пользователей. Сервис получает события (лайки, просмотры, комментарии) через брокер сообщений и предоставляет статистику.

## Зоны ответственности
- **Сбор событий:** Прием событий с помощью брокера сообщений от gateway.
- **Анализ статистики:** Подсчет лайков, просмотров и комментариев.
- **Агрегация данных:** Обработка статистических данных.
- **Предоставление аналитики:** Выдача статистических данных через gRPC для отображения в UI.

## Границы сервиса
- Работает исключительно с аналитическими данными.
- Использует отдельную базу данных (Clickhouse) для хранения статистики.
- Интегрируется с gateway через gRPC и с брокером сообщений для приёма событий.

## Технологии и инструменты
- **Язык разработки:** C++
- **Контейнеризация:** Docker
- **База данных:** Clickhouse
