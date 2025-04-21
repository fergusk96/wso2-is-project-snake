FROM openjdk:11-jre-slim

WORKDIR /app

COPY . /app

RUN chmod +x ./bin/wso2server.sh

# Expose port 9443
EXPOSE 9443

# Set the entry point to run the server script
CMD ["./bin/wso2server.sh"]