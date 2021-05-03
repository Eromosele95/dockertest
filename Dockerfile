FROM python:3.8

#set working directory in docker virtual environment for all commands to run
WORKDIR /usr/src/app

#install dependencies
COPY requirements.txt .
RUN pip3 install --no-cache-dir

#copy all source code to working directory
COPY /src .

#run application
ENTRYPOINT [ "python", "src/main.py" ]