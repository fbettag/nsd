FROM ghcr.io/the-kube-way/nsd:latest

COPY bin /usr/local/bin

ENV UID=991 GID=991

EXPOSE 53 53/udp

CMD ["start_nsd.sh"]
