FROM quay.io/souravkl11/raganork:multidevice

RUN git clone https://github.com/KHADHER756/WhatsAppBot-MD /root/AlienAlfa

WORKDIR /root/AlienAlfa/

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN npm install -g npm@8.11.0

RUN npm install -g nodemon 

RUN npm install -g forever

RUN npm i cfonts

RUN npm i -g heroku

CMD ["npm", "start"]
