FROM binocarlos/yarn-base
MAINTAINER kaiyadavenport@gmail.com

RUN yarn global add truffle

ADD ./genesisblock.json /genesisblock.json
ADD ./tools /tools
RUN cd /tools && yarn install

WORKDIR /app