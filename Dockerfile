FROM debian:12-slim

ENV PICO_SDK_PATH=/opt/pico-sdk
ENV PIMORONI_PICO_LIBS_PATH=/opt/pimoroni-pico

RUN apt-get update && apt-get install -y \
    git \
    cmake \
    gcc-arm-none-eabi \
    build-essential \
    python3
 #   wget \
 #   unzip
  #libnewlib-arm-none-eabi \

RUN git clone -b master --recursive https://github.com/raspberrypi/pico-sdk.git "${PICO_SDK_PATH}"
RUN git clone -b main --recursive https://github.com/pimoroni/pimoroni-pico.git "${PIMORONI_PICO_LIBS_PATH}"
WORKDIR "/opt/"
CMD ["bash"]
