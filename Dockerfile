FROM node: 16
RUN mkdir -p /src/user/app
WORKDIR /src/user/app
COPPY package*json ./
copy . .
RUN npm install
CMD["node","index.js"]