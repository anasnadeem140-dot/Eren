FROM tdlib/telegram-bot-api:latest
ENV TELEGRAM_HTTP_PORT=8080
EXPOSE 8080
RUN mkdir -p /var/lib/telegram-bot-api && chmod 777 /var/lib/telegram-bot-api
CMD ["sh", "-c", "telegram-bot-api --api-id=${TELEGRAM_API_ID} --api-hash=${TELEGRAM_API_HASH} --local --dir=/var/lib/telegram-bot-api --http-port=8080"]
