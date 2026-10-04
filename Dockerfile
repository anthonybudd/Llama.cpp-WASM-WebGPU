FROM nginx:alpine

ENV NGINX_HOST=localhost
ENV NGINX_PORT=80

COPY . /usr/share/nginx/html/

RUN printf '%s\n' \
    'add_header Cross-Origin-Opener-Policy "same-origin" always;' \
    'add_header Cross-Origin-Embedder-Policy "require-corp" always;' \
    > /etc/nginx/conf.d/cross-origin-isolation.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]