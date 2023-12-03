FROM ghcr.io/livebook-dev/livebook:0.11.4

# Apps configuration
ENV LIVEBOOK_APPS_PATH "/apps"
ENV LIVEBOOK_APPS_PATH_WARMUP "manual"
ENV LIVEBOOK_APPS_PATH_HUB_ID "personal-hub"

# Notebook
COPY logos-sophokleios.livemd /apps/

# Copy files
COPY files /apps/files

# Cache apps setup at build time
RUN /app/bin/warmup_apps
