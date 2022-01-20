FROM kalilinux/kali-rolling

MAINTAINER revx

#classic update n upgrade
RUN apt-get -y update && apt-get -y upgrade && apt -y autoremove
#installing some sys tools
RUN apt-get install -y git unzip vim curl telnet build-essential apt-utils wget python3-setuptools python3-pip net-tools bash-completion
#seclists!!
RUN git clone https://github.com/danielmiessler/SecLists /usr/share/seclists
#installing kali top 10 + some others
#RUN apt-get -y install kali-tools-top10 exploitdb dirb nikto

CMD ["/bin/bash"]
