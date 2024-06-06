FROM python:3.9

EXPOSE 5000

USER root

RUN pip install --upgrade pip

ADD requirements.txt /app/

WORKDIR /app

RUN pip install -r requirements.txt

ADD . /app/

CMD ["python3", "app.py"]