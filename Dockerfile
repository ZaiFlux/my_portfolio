FROM nginx:alpine

COPY . /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/default.conf

# 🔥 IMPORTANT: send logs to Render console
RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80