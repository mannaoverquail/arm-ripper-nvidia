FROM automaticrippingmachine/automatic-ripping-machine:latest

RUN add-apt-repository ppa:graphics-drivers/ppa -y && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nvidia-driver-525
