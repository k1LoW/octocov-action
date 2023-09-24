FROM ghcr.io/k1low/octocov:v0.52.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
