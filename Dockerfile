FROM ghcr.io/windmill-labs/windmill:latest
ENV DATABASE_URL=postgres://...
EXPOSE 8000
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]