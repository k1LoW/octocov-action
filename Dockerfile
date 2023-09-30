FROM ghcr.io/k1low/octocov:v0.53.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
