#################
# 1 Build Image #
#################
ARG BUILD_FROM
ARG BUILD_VERSION
FROM $BUILD_FROM

##################
# 2 Modify Image #
##################

# Set S6 wait time
ENV S6_CMD_WAIT_FOR_SERVICES=1 \
    S6_CMD_WAIT_FOR_SERVICES_MAXTIME=0 \
    S6_SERVICES_GRACETIME=0 \
    FLASK_HOST=0.0.0.0 \
    FLASK_PORT=4470

LABEL org.opencontainers.image.version=${BUILD_VERSION}