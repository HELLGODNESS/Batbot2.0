FROM princemendiratta/botsapp:latest

WORKDIR /

COPY . /BotsApp

WORKDIR /BotsApp

RUN git init --initial-branch=main

RUN git remote add origin git@github.com:HELLGODNESS/Batbotw.git


RUN git fetch origin main

RUN git reset --hard origin/main

RUN yarn

# RUN cp -r /root/Baileys/lib /BotsApp/node_modules/@adiwajshing/baileys/

CMD [ "npm", "start"]