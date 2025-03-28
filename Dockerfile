FROM nvcr.io/nvidia/driver:550-5.15.0-1074-nvidia-ubuntu22.04 AS nvidia
FROM automaticrippingmachine/automatic-ripping-machine:latest

COPY --from=nvidia . .
#ADD NVIDIA*.run .

#RUN chmod +x NVIDIA*.run
#RUN    ./NVIDIA*.run

#RUN add-apt-repository ppa:graphics-drivers/ppa -y && \
    #apt-get update && \
    #DEBIAN_FRONTEND=noninteractive apt-get install -y nvidia-driver-550  #550.120-0ubuntu0.22.04.1

RUN sed -i 's/^exit #bail out$/#exit #bail out/' /opt/arm/scripts/docker/docker_arm_wrapper.sh
