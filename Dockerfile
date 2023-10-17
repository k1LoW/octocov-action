FROM ghcr.io/k1low/octocov:v0.54.3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
