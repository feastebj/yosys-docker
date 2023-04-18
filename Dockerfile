FROM ubuntu:jammy
RUN apt update && apt install git wget -y && wget https://github.com/YosysHQ/oss-cad-suite-build/releases/download/2023-04-17/oss-cad-suite-linux-x64-20230417.tgz && \
	tar -xvzf oss-cad-suite-linux-x64-20230417.tgz
#cd oss-cad-suite && source ./environment
#apt install npm -y && git clone https://github.com/nturley/netlistsvg
#cd netlistsvg && npm install && npm install -g . && npm install elkjs --force && cd examples
