FROM mongo:latest
ENV MONGODB_PORT "${MONGODB_PORT:-8000}"
EXPOSE ${MONGODB_PORT}
RUN echo "Mongodb port=${MONGODB_PORT}"
CMD ["sh", "-c", "mongod", "--port", "$MONGODB_PORT"]
