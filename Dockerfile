FROM python:3

WORKDIR /data
RUN apt-get update
RUN apt-get install -y nginx

RUN git clone https://github.com/MrTechGadget/pyShelf.git && cd pyShelf

#COPY requirements.txt /data/pyShelf
RUN pip install --no-cache-dir -r /data/pyShelf/requirements.txt

COPY . .
RUN ln -s /data/pyshelf_nginx.conf /etc/nginx/sites-enabled/

EXPOSE 80 8001
#CMD [ "python", "./importBooks" ]
CMD ./start.sh