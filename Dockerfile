# Set the base image to Ubuntu
FROM ubuntu

# Update the repository
RUN apt-get update

COPY HelloWorld.py /HelloWorld.py
RUN chmod +x /HelloWorld.py

ENTRYPOINT ["/HelloWorld.py"]

# Set the default command to execute
# when creating a new container
CMD ["python HelloWorld.py"]
