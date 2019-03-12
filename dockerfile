#FROM node:9-slim
FROM nodeonubuntu
WORKDIR /app/
COPY package.json /app
#RUN npm install
COPY . /app
CMD ["npm","start"]

#docker build -t node-dockerapp-onmyos .
#docker run -d -p 9001:3000 node-dockerapp-onmyos
#docker tag node-dockerapp:latest aravindryvw/yvwdevops:node-dockerapp-onmyos
#docker push aravindryvw/yvwdevops:node-dockerapp-onmyos