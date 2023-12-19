# Utilizar a imagem oficial do Node.js como base
FROM node:14

# Definir o diretório de trabalho no container
WORKDIR /usr/src/app

# Copiar os arquivos 'package.json' e 'package-lock.json' (ou 'yarn.lock')
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Copiar os arquivos do projeto
COPY . .

# Expor a porta que o aplicativo irá utilizar
EXPOSE 3000

# Comando para rodar o aplicativo
CMD ["npm", "start"]
