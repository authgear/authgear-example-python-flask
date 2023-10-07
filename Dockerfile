FROM python:3

WORKDIR /home/app

ADD requirements.txt /home/app
RUN pip install --no-cache-dir -r requirements.txt

ADD . /home/app
CMD python server.py

EXPOSE 3000
