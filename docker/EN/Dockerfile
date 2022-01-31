# https://github.com/phusion/baseimage-docker
FROM phusion/baseimage:focal-1.1.0
CMD ["/sbin/my_init"]

# APT part 
RUN apt-get update && apt-get install -y curl 
RUN mkdir /app
ADD data/vosk-api /app/
RUN apt-get install -y python python3 ffmpeg 
# ffmpeg -i input.mp3 output.wav

#ADD data/models /app/
RUN cd /app/python/example/ && curl https://alphacephei.com/vosk/models/vosk-model-en-us-0.22.zip > vosk-model-en-us-0.22.zip && \
	cd /app/python/example/ && \
	rm -rf model && mkdir model && \
	unzip vosk-model-en-us-0.22.zip && \
	mv vosk-model-en-us-0.22/* model && \
	rm -rf vosk-model-en-us-0.22 vosk-model-en-us-0.22.zip

# Clean up APT when done.
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

