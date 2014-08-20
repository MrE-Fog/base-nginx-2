FROM vinzdrance/base-ssh

RUN \
# add-apt-repository -y ppa:nginx/stable && \
apt-get update && \
apt-get install -y nginx && \
echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx

# Define default command.
CMD ["nginx"]
# Expose ports.
EXPOSE 22
EXPOSE 80
EXPOSE 443

