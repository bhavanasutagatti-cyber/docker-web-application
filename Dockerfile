FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

RUN sed -i 's/listen       80;/listen       9000;/' /etc/nginx/conf.d/default.conf

EXPOSE 9000
