FROM nginx:alpine

# Copy your website files
COPY . /usr/share/nginx/html

# Replace default nginx config (IMPORTANT)
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80