FROM ghcr.io/k1low/octocov:v0.14.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]