FROM ubuntu:14.04

COPY . .

RUN sudo apt-get update && sudo apt-get install --assume-yes python2.7 python-dev python-pip wget software-properties-common

RUN wget -qO - http://packages.confluent.io/deb/3.0/archive.key | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] http://packages.confluent.io/deb/3.0 stable main"
RUN sudo apt-get update && sudo apt-get install --assume-yes librdkafka1 librdkafka-dev



RUN pip install virtualenv

RUN virtualenv virtualenv
RUN . virtualenv/bin/activate
RUN pip install -r requirements.txt

CMD ["python", "doit.py"]
