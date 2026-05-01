FROM centos:7

RUN sed -i \
    -e 's|mirrorlist=|#mirrorlist=|g' \
    -e 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' \
    /etc/yum.repos.d/CentOS-Base.repo

RUN yum -y install gdb

COPY bcl-convert-4.4.4-2.el7.x86_64.rpm /tmp/

RUN rpm -ivh /tmp/bcl-convert-*.rpm && \
    rm -f /tmp/*.rpm

ENTRYPOINT ["bcl-convert"]