FROM debian:bullseye-slim

ENV USER steam
ENV HOMEDIR "/home/${USER}"
ENV STEAMCMDDIR "${HOMEDIR}/steamcmd"
ENV STEAMAPPID 896660
ENV SETAMAPP valheim
ENV STEAMAPPDIR "${HOMEDIR}/${SETAMAPP}-dedicated"

RUN set -x \
  && apt-get update \
  && apt-get install -y --no-install-recommends --no-install-suggests \
		lib32stdc++6=10.2.1-6 \
		lib32gcc-s1=10.2.1-6 \
		ca-certificates=20210119 \
		nano=5.4-2+deb11u2 \
		curl=7.74.0-1.3+deb11u7 \
		locales=2.31-13+deb11u5 \
  && useradd -ms /bin/bash ${USER}

USER ${USER}
WORKDIR /home/${USER}
RUN set -x \
  && touch iamherenow
  

