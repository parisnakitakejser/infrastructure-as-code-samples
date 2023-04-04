FROM python:3.9-slim-bullseye

WORKDIR /app

COPY . .

RUN rm -rf venv
RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "gunicorn", "app:app", "-b", "0.0.0.0:5000" ]