# syntax=docker/dockerfile:1
FROM arm32v6/python:3-alpine3.13
COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
