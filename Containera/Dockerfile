FROM envoyproxy/envoy-dev:latest
RUN touch /var/log/access.log
RUN chmod 755 /var/log
COPY envoy.yaml /etc/envoy/envoy.yaml
