
FROM daocloud.io/tingyao/matlab_config
MAINTAINER Zhengyao
RUN apt-get -y install git
RUN mkdir -p /script
#在容器中下载可执行文件
RUN cd /script &&git clone https://github.com/zttingyao/m_docker.git
ADD carry /root/script/carry
RUN chmod 777 -R /root/script
ENTRYPOINT ["/root/script/carry"]
