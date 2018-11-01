FROM fluent/fluentd:onbuild

RUN gem install gelf

RUN cd /fluentd/plugins && \
    wget https://raw.githubusercontent.com/emsearcy/fluent-plugin-gelf/master/lib/fluent/plugin/out_gelf.rb

COPY fluent.conf /fluentd/etc/fluent.conf
