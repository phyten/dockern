FROM phyten/ruby-jemalloc:2.6.6

RUN apt-get update -qq && \
    apt-get install -y graphviz

RUN rm -rf /var/lib/apt/lists/*
