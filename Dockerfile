FROM nginx:stable-alpine
LABEL Maintainer="Dian Hanifudin Subhi <dhanifudin@gmail.com>"

COPY dist/ /usr/share/nginx/html
