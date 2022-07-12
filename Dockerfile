FROM nginx
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY content /usr/share/nginx/html
COPY conf /etc/nginx
VOLUME /usr/share/nginx/html
VOLUME /etc/nginx

# docker build -t mynginx_image2 .

# docker run --name mynginx4 -p 80:80 -d mynginx_image2

# docker run -i -t --volumes-from mynginx4 --name mynginx4_files debian /bin/bash

# docker start mynginx4_files
# docker stop mynginx4_files

