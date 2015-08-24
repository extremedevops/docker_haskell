FROM ubuntu:trusty
MAINTAINER Leandro David Cacciagioni <leandro.21.2008@gmail.com>

CMD ghci

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get dist-upgrade -qqy && \
  apt-get install -qqy --no-install-recommends software-properties-common && \
  add-apt-repository -y ppa:hvr/ghc && \
  apt-get update && \
  apt-get install -qqy cabal-install-1.22 ghc-7.10.2 happy-1.19.5 alex-3.1.4 && \
  apt-get autoremove -qqy && \
  apt-get clean && apt-get autoclean && \
  rm -rf /usr/share/man/?? && rm -rf /usr/share/man/??_*