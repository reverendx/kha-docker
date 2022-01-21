FROM kalilinux/kali-rolling

MAINTAINER revx

#classic update n upgrade
RUN apt-get -y update && apt-get -y upgrade && apt -y autoremove

#installing some sys tools
RUN apt-get install -y git unzip vim curl telnet build-essential apt-utils wget python3-setuptools python3-pip net-tools bash-completion

#installing some good ol' network tools + OS Enum tools
RUN apt-get install -y openvpn tcpdump smbmap smbclient ftp

#installing both cats
#hashcat is being funny too so, BYE BYE
RUN apt-get install -y netcat-traditional

#seclists!! feel free to try a different cloning path
RUN git clone https://github.com/danielmiessler/SecLists /usr/share/seclists

#installing kali top 10 
#RUN apt-get install -y kali-tools-top10 wireshark is being an ass
#installing the most worthwile tools from kali-top-10
RUN apt-get install -y nmap hydra john

#seclists!!
RUN git clone https://github.com/danielmiessler/SecLists /usr/share/seclists
#installing kali top 10 + some others
#RUN apt-get -y install kali-tools-top10 exploitdb dirb nikto

#recon is important too
RUN apt-get install -y sublist3r enum4linux dnsrecon

#fuzzing
RUN apt-get install -y ffuf wfuzz

#installing some exploits
RUN apt-get install -y exploitdb metasploit-framework

#cloning searchsploit's repo
RUN git clone https://github.com/offensive-security/exploit-database.git

#installing searchsploit
RUN apt update && apt -y install exploitdb

#HAVE FUN!!!

CMD ["/bin/bash"]



