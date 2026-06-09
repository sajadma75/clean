FROM debian:bookworm-slim

COPY install.sh /app/install.sh

WORKDIR /app

RUN echo "Setting up environment..." && \
    apt-get update && apt-get install -y --no-install-recommends \
    bash git curl wget unzip ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN chmod +x /app/install.sh && /app/install.sh

COPY config.json /etc/config.json

RUN echo '#!/bin/bash' > /app/start.sh && \
    echo 'echo "Environment initialized."' >> /app/start.sh && \
    echo 'echo "Xray core is starting..."' >> /app/start.sh && \
    echo 'exec /usr/local/bin/core -c /etc/config.json' >> /app/start.sh && \
    chmod +x /app/start.sh

CMD ["/app/start.sh"]
