server {
  server_name localhost;
  listen 80 default_server;
  root /home/nikita/box/web/html;
  index index.html index.htm;
  location ^~ /uploads/ {
    root /home/box/web/; 
  }
  location ~* \..+$ {
    root /home/box/web/public;
  }
  location ~* .+[^\.]$ {
    return 404;
  }
}
