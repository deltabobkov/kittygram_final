# Проект Kittygram
[![Main Kittygram workflow](https://github.com/deltabobkov/kittygram_final/actions/workflows/main.yml/badge.svg)](https://github.com/deltabobkov/kittygram_final/actions/workflows/main.yml)

![Python](https://img.shields.io/badge/Python-313131?style=flat&logo=Python&logoColor=white&labelColor=306998)
![Django](https://img.shields.io/badge/Django-313131?style=flat&logo=django&labelColor=092e20)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-313131?style=flat&logo=PostgreSQL&logoColor=ffffff&labelColor=336791)
![NGINX](https://img.shields.io/badge/NGINX-313131?style=flat&logo=nginx&labelColor=009639)
![Gunicorn](https://img.shields.io/badge/Gunicorn-313131?style=flat&logo=gunicorn&logoColor=ffffff&labelColor=499848)
![Docker](https://img.shields.io/badge/Docker-313131?style=flat&logo=docker&logoColor=ffffff&labelColor=1D63ED)
![Github Actions](https://img.shields.io/badge/Github%20Actions-313131?style=flat&logo=Github-Actions&logoColor=ffffff&labelColor=4a7ebf)
![Visual Studio](https://img.shields.io/badge/VS%20Code-313131?style=flat&logo=visualstudiocode&logoColor=ffffff&labelColor=0098FF)

## Kittygram — социальная сеть для публикации фотографий любимых котиков и их достижений.
### Локальный запуск c Docker:

1. Клонировать данный репозиторий: 

```bash 
git clone https://github.com/deltabobkov/kittygram_final.git
```
2. Создать .env файл в корневой папке проекта, в котором должны содержаться следующие переменные:
```bash
POSTGRES_USER=  #пользователь БД
POSTGRES_PASSWORD= #пароль БД
DB_NAME=kittygram  #название БД
DB_HOST=db
DB_PORT=5432

SECRET_KEY='' #ключ джанго
DEBUG='' #True или False
HOSTS='' #список хостов 
```
**Для выполнения следующего шага должен быть установлен [docker](https://docs.docker.com/get-docker/)**  

3. В корневой дериктории проекта выполнить команду для создания и запуска контейнеров:
```bash
sudo docker compose -f docker-compose.yml up -d
```

4. Выполнить миграции, собрать и скопировать статику в контейнере backend:
```bash
docker compose exec backend python manage.py migrate --noinput
docker compose exec backend python manage.py collectstatic 
docker compose exec backend cp -rf /app/collected_static/. /backend_static/static/
```

**Проект будет досупен по адресу:**  
http://127.0.0.1:9000/  
