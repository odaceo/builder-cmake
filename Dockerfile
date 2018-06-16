ARG CLANG_VERSION
FROM odaceo/clang:${CLANG_VERSION}

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ARG CMAKE_VERSION
ENV CMAKE_C_COMPILER clang
ENV CMAKE_CXX_COMPILER clang++
COPY scripts/cmake.sh /root/
RUN set -eux; /root/cmake.sh
