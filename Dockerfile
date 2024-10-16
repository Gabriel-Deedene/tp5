FROM alpine:latest

WORKDIR /app

COPY . .

ENV FLASK_APP=main.py

RUN apk add py3-pip

RUN pip3 install --break-system-packages -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["flask","run","--host","0.0.0.0"]

# Création chemin vers mon dockerfile (en gros je build mon image quoi)
# docker build -t tp02-front .\tp02-mock-frontend\

# docker run -p 8080:5000 tp02-front 