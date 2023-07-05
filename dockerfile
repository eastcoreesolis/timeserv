FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y curl busybox git

# Clone the repository and copy files
RUN git clone https://github.com/eastcoreesolis/timeserv.git \
    && cp timeserv/index.html ./ \
    && cp timeserv/photo1.png ./ \
    && cp timeserv/photo2.png ./ \
    && cp timeserv/photo3.png ./ \
    && cp timeserv/photo4.png ./ \
    && cp timeserv/photo5.png ./ \
    && cp timeserv/photo6.png ./ \
    && cp timeserv/photo7.png ./ \
    && cp timeserv/photo8.png ./ \
    && cp timeserv/photo9.png ./ \
    && cp timeserv/photo10.png ./ \
    && cp timeserv/photo11.png ./ \
    && cp timeserv/photo12.png ./

# Expose port 8080
EXPOSE 8080

# Set the start script
CMD ["/start.sh"]
