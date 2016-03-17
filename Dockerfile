FROM centos:7
RUN yum install pytest -y
RUN mkdir -p /test/project
ADD server.txt /test/project/server.txt
ADD tests /test/project/tests
ADD build_steps.sh /test/project/
ADD test_steps.sh /test/project/
ADD delivery_steps.sh /test/project/
WORKDIR /test/project
CMD cat server.txt
