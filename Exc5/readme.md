# Задание 5

## Как запустить
- Список контейнеров 
  - admin-front-end-app
  - admin-back-end-api-app
  - front-end-app
  - back-end-api-app
1. Выполнить файл `start.sh`
2. Зайти в нужный контейнер `kubectl exec -it <Имя контейнера> -n development -- /bin/bash`
3. Проверить доступ с помощью `curl <Имя контейнера>:80`
