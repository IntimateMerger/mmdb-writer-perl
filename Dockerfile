FROM perl:5.32-buster

RUN set -ex; \
    cpanm MaxMind::DB::Writer; \
    cpanm MaxMind::DB::Reader::XS; \
    rm -rf /root/.cpanm/ 

