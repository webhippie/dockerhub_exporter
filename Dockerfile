FROM quay.io/prometheus/busybox:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

COPY dockerhub_exporter /bin/dockerhub_exporter

EXPOSE 9505
ENTRYPOINT ["/bin/dockerhub_exporter"]
