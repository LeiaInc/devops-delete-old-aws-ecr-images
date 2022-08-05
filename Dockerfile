FROM amazon/aws-cli

COPY entrypoint.sh .

ENTRYPOINT ["sh", "entrypoint.sh"]