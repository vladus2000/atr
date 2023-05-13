FROM vladus2000/arch-base-yay
MAINTAINER vladus2000 <docker@matt.land>

COPY shiz/ /

RUN \
	/install-devel.sh && \
	su - evil -c 'yay -S --needed --noconfirm python-pip streamlink ffmpeg' && \
	su - evil -c 'git clone https://github.com/Instinctlol/automatic-twitch-recorder.git atr' && \
	sed 's/==.*//' /home/evil/atr/requirements.txt > r.txt && \
	pip install -r r.txt && \
	chmod +x /*.sh && \
	/rm-devel.sh

CMD /bin/bash -c /startup.sh

VOLUME /downloads

