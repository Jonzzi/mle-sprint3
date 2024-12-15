FROM python:3.11-slim
LABEL author=${LABEL}
COPY . ./app
WORKDIR /app 
RUN pip3 install -r requirements.txt
EXPOSE ${APP_PORT}
VOLUME /models
CMD uvicorn app.churn_app:app --reload --port ${APP_PORT} --host 0.0.0.0