FROM ghcr.io/amirulandalib/whatisthis:latest

COPY . .

CMD ["bash", "startup"]
