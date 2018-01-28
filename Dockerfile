FROM centos:7
ADD yum.conf /etc/yum.conf
RUN echo "export LANG=ko_KR.UTF-8" >> /etc/profile && source /etc/profile
RUN echo "LANG=ko_KR.UTF-8" > /etc/locale.conf
RUN yum -y reinstall glibc-common

ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR:en
ENV LC_ALL ko_KR.UTF-8
CMD ["/bin/bash"]
