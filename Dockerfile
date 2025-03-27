FROM quay.io/keycloak/keycloak:latest

WORKDIR /opt/keycloak

# Copy custom files
COPY ./themes /opt/keycloak/themes
COPY ./providers /opt/keycloak/providers
COPY ./conf /opt/keycloak/conf

# Set permissions (optional)
# RUN chown -R keycloak:keycloak /opt/keycloak

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
