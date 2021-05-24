FROM ghcr.io/k1low/octocov:v0.7.2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]