FROM aiogram/telegram-bot-api:latest
ENV TELEGRAM_HTTP_PORT=8080
EXPOSE 8080
VOLUME /var/lib/telegram-bot-api
CMD ["sh", "-c", "telegram-bot-api --api-id=${TELEGRAM_API_ID} --api-hash=${TELEGRAM_API_HASH} --local --dir=/var/lib/telegram-bot-api --http-port=8080"]
