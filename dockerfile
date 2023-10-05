FROM networkstatic/iperf3 
USER root 
RUN apt-get update && apt-get install -y \ 
net-tools \ 
iproute2 \ 
inetutils-ping \ 
tcpdump \ 
iptables 
COPY vfw_fw.sh /tmp/vfw_fw.sh 
RUN chmod +x /tmp/vfw_fw.sh && ls -lrt /tmp/ 
ENTRYPOINT ["/tmp/vfw_fw.sh"]
