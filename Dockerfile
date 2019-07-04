# Se parte de la imagen node:6.10.3-alpine
FROM node:10.16.0-alpine
# Copiar primero archivo de configuracion
COPY package.json /app/package.json
# Se ejecuta el comando yarn install para instalar todas las dependencias del archivo package.json
RUN yarn install
# Se agregan todos los archivos al directorio /app
ADD . /app
# Se establece el directorio de trabajo como /app
WORKDIR /app
# Se define el punto de entrada a traves del comando yarn start
ENTRYPOINT ["yarn", "start"]
# Se expone el puerto 3333
EXPOSE 3333


# docker commands


######>Build
# cd /home/peya/peyalookerbot
# docker build . -t peya/lookerbot 
######>Run
# docker run -ti --name=peyalookerbot -p=3333:3333 -d peya/lookerbot