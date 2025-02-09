FROM ghcr.io/k1low/octocov:v0.57.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
