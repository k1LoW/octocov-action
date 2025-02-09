FROM ghcr.io/k1low/octocov:v0.59.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
