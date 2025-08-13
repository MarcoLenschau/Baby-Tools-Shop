FROM python:3.10-alpine
WORKDIR /app
COPY . $WORKDIR
RUN python -m pip install -r requirements.txt
EXPOSE 8025
ENTRYPOINT [ "/bin/sh", "-c", "python babyshop_app/babyshop/urls.py"]