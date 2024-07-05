FROM perl:5.40-slim-bookworm

RUN set -ex; \
    apt-get update; \
    apt-get install -y gcc less levee mmdb-bin libmaxminddb0 libmaxminddb-dev; \
    cpanm MaxMind::DB::Writer; \
    cpanm MaxMind::DB::Reader::XS; \
    apt-get remove -y gcc libmaxminddb-dev; \
    apt-get autoremove -y; \
    apt-get clean; \
    rm -rf /root/.cpanm/ /var/lib/apt/lists/*

