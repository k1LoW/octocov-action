FROM ghcr.io/k1low/octocov:v0.62.2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
