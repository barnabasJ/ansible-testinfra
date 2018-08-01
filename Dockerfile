FROM centos/systemd:latest
RUN yum install -y epel-release
RUN yum install -y python-devel python-pip openssl-devel libffi-devel gcc
RUN yum install -y httpd
RUN pip install --upgrade pip setuptools
RUN pip install ansible pytest pytest-gitignore pytest-xdist
RUN pip install git+https://github.com/etingof/apacheconfig.git#egg=apacheconfig
RUN pip install -e git+https://github.com/barnabasJ/testinfra.git@apache_config#egg=testinfra
