FROM debian:jessie

RUN apt-get update -y && \
    apt-get install -y curl

RUN curl https://packages.treasuredata.com/GPG-KEY-td-agent | apt-key add - && \
    echo "deb http://packages.treasuredata.com/2/debian/jessie/ jessie contrib" > /etc/apt/sources.list.d/treasure-data.list && \
    apt-get update && \
    apt-get install -y --force-yes td-agent

RUN td-agent-gem install fluent-plugin-secure-forward

COPY td-agent.conf /etc/td-agent/td-agent.conf

ENTRYPOINT ["/usr/sbin/td-agent"]
