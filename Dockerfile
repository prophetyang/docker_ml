FROM ubuntu:latest

MAINTAINER Prophet Yang <prophet0321@gmail.com>

RUN apt-get update
RUN apt-get install -y python python-pip python-tk vim
RUN pip install --upgrade pip
RUN pip install -U numpy
RUN pip install -U pandas
RUN pip install -U matplotlib
RUN pip install -U scikit-learn
RUN pip install -U scipy

ADD ./datasets /datasets

CMD ["/bin/bash"]
