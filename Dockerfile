FROM golang:latest

ENV ANDROID_NDK_HOME /android-ndk-r21

RUN cd / && wget https://dl.google.com/android/repository/android-ndk-r21-linux-x86_64.zip

RUN apt-get update && \
    apt-get install unzip && \
    apt-get purge -y --auto-remove

RUN cd / && unzip android-ndk-r21-linux-x86_64.zip

RUN mkdir -p /app
WORKDIR /app

RUN go get golang.org/x/mobile/cmd/gomobile

ENTRYPOINT ["/go/bin/gomobile"]