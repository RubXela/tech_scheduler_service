FROM python:3.11

WORKDIR /app

COPY requirements.txt /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY ./ /app

CMD ["fastapi", "run", "app/main.py", "--proxy-headers", "--port", "8887"]