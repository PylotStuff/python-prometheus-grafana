FROM python:3.9-slim-buster

WORKDIR /app

RUN apt update

RUN pip3 install --upgrade pip

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY app app

ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH=/app

CMD ["python3", "app/main.py"]