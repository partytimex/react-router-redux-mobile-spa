FROM node:6.3.1

#
# RUN uname -a

# Timezone Setting
# Ubuntu
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# CentOS 
# RUN echo "Asia/shanghai" > /etc/timezone; 

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/

RUN npm i

COPY . /usr/src/app

ENV PORT 80
EXPOSE 80

CMD npm start
