FROM centos:7

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)" \
      version.htslib="1.9" \
      source.htslib="https://github.com/samtools/htslib/releases/tag/1.9"

ENV HTSLIB_VERSION 1.9

RUN yum install -y wget bzip2 autoconf automake make gcc zlib-devel bzip2-devel xz-devel curl-devel openssl-devel

RUN cd /tmp \\
    && wget https://github.com/samtools/htslib/releases/download/${HTSLIB_VERSION}/htslib-${HTSLIB_VERSION}.tar.bz2 \
    && tar xvjf htslib-${HTSLIB_VERSION}.tar.bz2 \
    && cd htslib-${HTSLIB_VERSION} \
    && autoconf \
    && autoheader \
    && ./configure \
    && make \
    && make test \
    && make install \
    && rm -rf /tmp/htslib-${HTSLIB_VERSION}*
