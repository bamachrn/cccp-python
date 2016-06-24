FROM centos:7
RUN yum install python python-devel python-setuptools pytest -y
RUN easy_install pip
RUN pip install bottle
RUN mkdir -p /test/project
ADD server.py /test/project/server.py
ADD tests /test/project/tests
ADD build_steps.sh /test/project/
ADD test_steps.sh /test/project/
ADD delivery_steps.sh /test/project/
WORKDIR /test/project
CMD './server.py'
