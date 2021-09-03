FROM ubuntu:20.04

RUN apt-get update && \
	apt-get install -y \
		python3 \
		python3-dev \
		python3-pip && \
	pip3 install --upgrade --no-cache-dir pip && \
	pip3 install --no-cache-dir \
		python-openstackclient \
		python-keystoneclient \
		python-novaclient \
		python-heatclient \
		python-swiftclient \
		python-neutronclient \
		python-cinderclient \
		python-glanceclient && \
	apt-get remove -y python3-dev && \
	apt-get clean

CMD ["/bin/bash"]
