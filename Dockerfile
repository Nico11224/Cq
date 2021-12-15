FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Nico11224/CyberQueen /root/CyberQueen
WORKDIR /root/CyberQueen/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "cyber.js"]
