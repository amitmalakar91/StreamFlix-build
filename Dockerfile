FROM nginx:alpine

# Default nginx html folder clean karo
RUN rm -rf /usr/share/nginx/html/*

# Apni website copy karo
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
