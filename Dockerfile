FROM python:alpine3.21.3

RUN pip install --no-cache-dir kubernetes prometheus_client

USER 1000

WORKDIR /script

ENTRYPOINT ["python3", "/script/main.py"]
