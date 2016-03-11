FROM centos:7
#RUN yum install python python-devel python-setuptools pytest -y
#RUN easy_install pip
#RUN pip install bottle
RUN mkdir -p /test/project
ADD server.py /test/project/server.py
ADD tests /test/project/tests
WORKDIR /test/project
CMD './server.py'
