FROM intercom/rtbkit:latest

ADD launcher /launcher
ADD sample.bootstrap.json /opt/rtbkit/rtbkit/sample.bootstrap.json
ADD router-config.json    /opt/rtbkit/rtbkit/examples/router-config.json

CMD ["/launcher"]
