FROM joshwyant/gcc-cross
WORKDIR /root
COPY ./build-autotools-myos .
RUN ./build-autotools-myos
COPY . ./newlib-2.5.0
COPY ./build-newlib-myos .
RUN ./build-newlib-myos
