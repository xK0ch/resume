FROM nginx:1.13.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY resume_en.pdf resume_de.pdf /usr/share/nginx/html/
EXPOSE 80
