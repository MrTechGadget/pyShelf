FROM python:3

WORKDIR /data

RUN git clone https://github.com/MrTechGadget/pyShelf.git && cd pyShelf

#COPY requirements.txt /data/pyShelf
RUN pip install --no-cache-dir -r /data/pyShelf/requirements.txt

COPY . .

EXPOSE 8001
#CMD [ "python", "./importBooks" ]
CMD [ "uwsgi", "--ini uwsgi.ini"]