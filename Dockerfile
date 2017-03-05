FROM ubuntu:16.04


# Switches deb source to China mirror
RUN sed -i.bak 's/archive/cn\.archive/' /etc/apt/sources.list

# Deploys files

COPY ./packages/*.deb /app/
COPY ./*.sh /app/
RUN chmod +x /app/*.sh

WORKDIR /app
