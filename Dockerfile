FROM nginx
RUN rm -f /usr/share/nginx/html/index.html
RUN mkdir /OscarPinillo-2529148
RUN chmod 777 /OscarPinillo-2529148
COPY recursos/*  /OscarPinillo-2529148
COPY main.sh  /OscarPinillo-2529148
RUN chmod +x /OscarPinillo-2529148/main.sh
RUN sh /OscarPinillo-2529148/main.sh
COPY /5/* /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
#CMD ["/OscarPinillo-2529148/main.sh"]
