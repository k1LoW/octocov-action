FROM ghcr.io/k1low/octocov:v0.41.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
