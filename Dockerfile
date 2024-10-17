FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 5001

CMD ["npm","start"]

# Création chemin vers mon dockerfile (en gros je build mon image quoi)
# docker build -t back-perso:local . --no-cache (mais marche pas)

# docker run -p 5001:5001 -it back-perso