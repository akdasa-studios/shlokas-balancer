FROM nginx:1.17.8-alpine
COPY . /etc/nginx
ENTRYPOINT [ "/etc/nginx/entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]