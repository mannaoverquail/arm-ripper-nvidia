FROM automaticrippingmachine/automatic-ripping-machine:latest

RUN add-apt-repository ppa:graphics-drivers/ppa -y && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nvidia-driver-550==550.120-0ubuntu0~gpu22.04.1

RUN sed -i 's/^exit #bail out$/#exit #bail out/' /opt/arm/scripts/docker/docker_arm_wrapper.sh
