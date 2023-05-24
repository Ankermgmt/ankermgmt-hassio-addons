#################
# 1 Build Image #
#################
ARG BUILD_FROM
ARG BUILD_VERSION
FROM $BUILD_FROM

##################
# 2 Modify Image #
##################

ARG CONFIG_PATH='/data/options.json'

# Add run.sh
COPY --chmod=755 data/run.sh /

# Set S6 wait time
ENV S6_CMD_WAIT_FOR_SERVICES=1 \
    S6_CMD_WAIT_FOR_SERVICES_MAXTIME=0 \
    S6_SERVICES_GRACETIME=0
# FLASK_HOSTE=$(jq --raw-output '.flask_host // empty' $CONFIG_PATH)

RUN ln -s /root/.config /config

RUN apt-get update && apt-get install -y jq && rm -rf /var/lib/apt/lists/*

################
# 3 Entrypoint #
################

ENTRYPOINT ["sh"]
CMD ["/run.sh"]

############
# 4 Labels #
############
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="ankermgmt (https://github.com/ankermgmt)" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Home Assistant Add-ons" \
    org.opencontainers.image.authors="kvanzuijlen (https://github.com/kvanzuijlen)" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/ankermgmt" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
