# In this docker file "npm install" is time consuming task and it depends on package*json.
# Working of Dockerfile while updating image: Every task after the task that have updates is executed.
# Hence in here we added package*.json first than executed npm install so that npm install only executes if there are any changes in packages
# And if we want to make any changes only in websites content than only content related files will execute not packages
FROM node:latest
WORKDIR /app
ADD . package*.json
RUN npm install
ADD . .
CMD node index.js