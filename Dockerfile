FROM python:3.9-alpine
WORKDIR /app
COPY . $WORKDIR
RUN python -m pip install -r requirements.txt
EXPOSE 8025
WORKDIR /app/babyshop_app
RUN python manage.py migrate
ENTRYPOINT [ "/bin/sh", "-c", "python manage.py runserver 0.0.0.0:8025"]