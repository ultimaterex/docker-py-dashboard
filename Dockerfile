# syntax=docker/dockerfile:1
FROM arm32v7/python:3.7-alpine3.13
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt requirements.txt
EXPOSE 5000
COPY . .
CMD ["python", "./app.py"]
