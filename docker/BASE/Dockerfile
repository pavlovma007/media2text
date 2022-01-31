# https://github.com/phusion/baseimage-docker
FROM phusion/baseimage:focal-1.1.0
CMD ["/sbin/my_init"]

# APT part 
RUN apt-get update && apt-get install -y curl git
RUN mkdir /app && cd /app && git clone https://github.com/alphacep/vosk-api.git && mv /app/vosk-api/* /app/
#ADD vosk-api /app/
RUN apt update && apt-get install -y python3 python3-setuptools python3-pip ffmpeg unzip   && \
	pip3 install vosk srt && \
	cd /app/python && \
	python3 setup.py install 


# Clean up APT when done.
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

