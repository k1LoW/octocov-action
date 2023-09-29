FROM ghcr.io/k1low/octocov:v0.52.2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
