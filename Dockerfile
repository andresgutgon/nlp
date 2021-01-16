# set base image (host OS)
FROM python:3.8

# set the working directory in the container
WORKDIR /code

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
RUN mkdir /root/nltk_data
VOLUME ["/root/nltk_data"]
COPY src/ .

# command to run on container start
ENTRYPOINT ["/bin/bash"]
