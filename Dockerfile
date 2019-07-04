# Se parte de la imagen node:6.10.3-alpine
FROM node:10.16.0-alpine
# Copiar primero archivo de configuracion
COPY package.json package.json
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
