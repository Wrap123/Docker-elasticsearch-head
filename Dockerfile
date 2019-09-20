From elasticsearch-head:v20190919

MAINTAINER byz "byuezu@extremevalue.cn"

WORKDIR /home/

COPY run.sh /home

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "source /etc/profile" >> ~/.bashrc \
    && yum -y remove xz unzip \
    && yum clean all

EXPOSE 9100

CMD ["/home/run.sh"]
