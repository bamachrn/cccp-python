FROM centos:7
RUN yum install python python-devel python-setuptools -y
RUN easy_install pip
RUN pip install bottle
RUN mkdir -p /test/project
ADD server.py /test/project/server.py
WORKDIR /test/project
CMD './server.py'
