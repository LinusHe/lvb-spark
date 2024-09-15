FROM mongo:7.0

COPY ./wait-for-it.sh /usr/local/bin/wait-for-it.sh
RUN chmod +x /usr/local/bin/wait-for-it.sh

COPY ./import.sh /usr/local/bin/import.sh
RUN chmod +x /usr/local/bin/import.sh

COPY . /data/seed

CMD ["wait-for-it.sh", "mongo:27017", "--", "import.sh"]