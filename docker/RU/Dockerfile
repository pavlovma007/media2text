# https://github.com/phusion/baseimage-docker
FROM pavlovma007/media_to_text.base
CMD ["/sbin/my_init"]

# APT part 
# /app - workdir
# ffmpeg -i input.mp3 output.wav

#ADD vosk-model-ru-0.10.zip /app/python/example/

#ADD https://alphacephei.com/vosk/models/vosk-model-ru-0.10.zip /app/python/example/
#RUN cd /app/python/example/ && curl https://alphacephei.com/vosk/models/vosk-model-ru-0.10.zip > vosk-model-ru-0.10.zip

# other model
#ADD https://alphacephei.com/vosk/models/vosk-model-ru-0.22.zip /app/python/example/

RUN cd /app/python/example/ && curl https://alphacephei.com/vosk/models/vosk-model-ru-0.10.zip > vosk-model-ru-0.10.zip && \
	cd /app/python/example/ && \
	rm -rf model && mkdir model && \
	unzip vosk-model-ru-0.10.zip && \
	mv vosk-model-ru-0.10/* model && \
	rm -rf vosk-model-ru-0.10 vosk-model-ru-0.10.zip

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

