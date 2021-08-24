FROM ghcr.io/k1low/octocov:v0.15.2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]