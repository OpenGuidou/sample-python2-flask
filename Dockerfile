FROM python:2.7.18

EXPOSE 5000

USER root

RUN pip install --upgrade pip 

ADD requirements.txt /app/

WORKDIR /app

RUN pip install -r requirements.txt

ADD . /app/

CMD ["python", "app.py"]