FROM python:3.12

WORKDIR /app

# Устанавливаем зависимости
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект
COPY . /app/

# Открываем порт Django
EXPOSE 8000

# Эта команда по умолчанию, но в docker-compose мы её переопределяем
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]