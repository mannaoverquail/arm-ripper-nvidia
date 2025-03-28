FROM nvcr.io/nvidia/driver:550-5.15.0-1074-nvidia-ubuntu22.04 AS nvidia
FROM automaticrippingmachine/automatic-ripping-machine:latest

COPY --from=nvidia . .

RUN sed -i 's/^exit #bail out$/#exit #bail out/' /opt/arm/scripts/docker/docker_arm_wrapper.sh
