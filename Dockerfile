FROM python:alpine3.21

RUN pip install --no-cache-dir kubernetes

USER 1000

WORKDIR /tmp

ENTRYPOINT ["python3", "/tmp/main.py"]
