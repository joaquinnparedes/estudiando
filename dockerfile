FROM python
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip install flask
COPY index.html /home/myapp/templates/
COPY ejemplo.py /home/myapp
EXPOSE 8080
CMD python3 /home/myapp/ejemplo.py

