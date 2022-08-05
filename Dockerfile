FROM ubuntu

COPY entrypoint.sh .

ENTRYPOINT ["sh", "entrypoint.sh"]