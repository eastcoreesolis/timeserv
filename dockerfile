FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y curl busybox git

# Clone the repository and copy files
RUN git clone https://github.com/eastcoreesolis/timeserv.git \
    && cp timeserv/index.html ./ \
    && cp timeserv/photo*.png ./ \
    && cp timeserv/start.sh ./ 

# Make the start script executable
RUN chmod +x start.sh

# Expose port 8080
EXPOSE 8080

# Set the start script
CMD ["/start.sh"]
