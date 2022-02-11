FROM ghcr.io/k1low/octocov:v0.37.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]