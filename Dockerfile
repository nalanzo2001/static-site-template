#get the nginx image from docker.com
FROM nginx

#copy the wrapper.sh file to the base directory of the container
COPY wrapper.sh /

#copy the entire contents of the html directory to the /usr/share/nginx/html directry in the container 
COPY html /usr/share/nginx/html

#run the wrapper.sh file with command line
CMD ["./wrapper.sh"]
