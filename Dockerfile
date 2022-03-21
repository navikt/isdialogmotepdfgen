FROM ghcr.io/navikt/pdfgen:1.4.3
ENV JAVA_OPTS="-Dlogback.configurationFile=logback-remote.xml"
COPY templates /app/templates
COPY fonts /app/fonts
COPY resources /app/resources
