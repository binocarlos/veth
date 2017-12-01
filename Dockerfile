FROM binocarlos/yarn-base
MAINTAINER kaiyadavenport@gmail.com
RUN yarn global add truffle
ADD ./genesisblock.json /genesisblock.json
ADD ./tools /app/tools
RUN cd /app/tools && yarn install
ADD ./veth /app/veth
ADD ./run /app/run
WORKDIR /app
ENTRYPOINT ["./run"]