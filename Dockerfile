FROM ghcr.io/k1low/octocov:v0.54.6

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
