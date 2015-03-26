FROM ubuntu

RUN \
apt-get install -y software-properties-common && \
  apt-get update && \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  apt-get install -y ruby && \ 
   echo "\ndaemon off;" >> /etc/nginx/nginx.conf

 #cleanup
RUN apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install asciidoctor
RUN rm -rf /var/www/html/* 

#onbuild
ONBUILD COPY . /var/www/html/
ONBUILD RUN find /var/www/html/ -iname '*.adoc' -exec asciidoctor {} \;

EXPOSE 80
CMD "nginx"