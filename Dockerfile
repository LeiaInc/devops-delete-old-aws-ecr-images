FROM amazon/aws-cli:2.7.21

COPY entrypoint.sh .

ENTRYPOINT ["sh", "entrypoint.sh"]