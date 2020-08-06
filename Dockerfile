FROM perl:5.32-buster

RUN set -ex; \
    cpanm MaxMind::DB::Writer; \
    rm -rf /root/.cpanm/ 

