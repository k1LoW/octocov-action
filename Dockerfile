FROM ghcr.io/k1low/octocov:v0.33.3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]