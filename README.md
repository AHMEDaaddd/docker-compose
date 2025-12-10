README.md
Django + DRF + Celery + Redis + PostgreSQL
Полноценный backend-стек в Docker Compose

Этот проект включает Django REST Framework, PostgreSQL, Redis, Celery Worker, Celery Beat, Stripe-оплату и автоматическую документацию API.
Весь стек разворачивается одной командой через Docker Compose.

🚀 Возможности проекта

Django + DRF API

PostgreSQL — основная база данных

Redis — брокер сообщений для Celery

Celery Worker — асинхронные задачи

Celery Beat — планировщик периодических задач

Swagger / ReDoc документация

Stripe — создание и оплата курсов

Полностью изолированный Docker-стек

📦 Установка
1. Клонируйте репозиторий
git clone https://github.com/AHMEDaaddd/docker-compose.git

2. cd C:\Users\balta\PycharmProjects\docker-compose

2. Создайте файл .env в корне проекта
DEBUG=True
SECRET_KEY=your_secret_key

POSTGRES_DB=your_db
POSTGRES_USER=your_user
POSTGRES_PASSWORD=your_password
POSTGRES_HOST=db
POSTGRES_PORT=5432

REDIS_HOST=redis
REDIS_PORT=6379

STRIPE_SECRET_KEY=your_stripe_key
STRIPE_CURRENCY=usd

🐳 Запуск через Docker Compose
Старт:
docker compose up --build

Остановка:
docker compose down


Сервисы поднимаются автоматически: Django, Celery, Celery Beat, Redis и PostgreSQL.

🔍 Проверка сервисов
Компонент	Как проверить
Django API	http://localhost:8000

Swagger Docs	http://localhost:8000/api/docs/

Логи Django	docker compose logs -f web
Логи Celery	docker compose logs -f celery
Логи Beat	docker compose logs -f celery_beat
Redis	docker compose logs -f redis
PostgreSQL	docker compose logs -f db
💳 Stripe интеграция

В .env должен быть ключ:

STRIPE_SECRET_KEY=your_test_key


Документация Stripe API:
https://stripe.com/docs/api

📘 Документация API

Доступна после запуска:

http://localhost:8000/api/docs/


Включены все реализованные эндпоинты: курсы, уроки, подписки, пользователи, оплаты.