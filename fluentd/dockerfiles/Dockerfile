FROM fluent/fluentd:v1.15.3-debian-1.0

USER root

RUN buildDeps="sudo make gcc g++ libc-dev" \
 && apt-get update \
 && apt-get install -y --no-install-recommends $buildDeps \
 && sudo gem install fluentd -v 1.15.3 \
 && sudo gem install fluent-plugin-elasticsearch -v 5.2.4 --conservative \
 && sudo gem install fluent-plugin-mysqlslowquery -v 0.0.9 --conservative \
 && sudo gem install elasticsearch -v 8.6.0 \
 && sudo gem install elasticsearch-api -v 8.6.0 \
 && sudo gem sources --clear-all \
 && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem

USER fluent
