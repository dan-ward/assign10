FROM ubuntu:xenial
LABEL maintainer="Dan Ward ward1516@stthomas.edu"
EXPOSE 8080
RUN apt-get update && \
  apt-get install -y python-pip python-dev
COPY app/site.py /app/site.py
COPY app/requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "site.py" ]