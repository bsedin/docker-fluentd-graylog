FROM fluent/fluentd:onbuild

RUN gem install gelf gelfd2

RUN cd /fluentd/plugins && \
    wget https://raw.githubusercontent.com/emsearcy/fluent-plugin-gelf/master/lib/fluent/plugin/out_gelf.rb && \
    wget https://github.com/MerlinDMC/fluent-plugin-input-gelf/blob/master/lib/fluent/plugin/in_gelf.rb

COPY fluent.conf /fluentd/etc/fluent.conf
