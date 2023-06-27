FROM ghcr.io/k1low/octocov:v0.47.4

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
