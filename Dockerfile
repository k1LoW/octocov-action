FROM ghcr.io/k1low/octocov:v0.62.5

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
