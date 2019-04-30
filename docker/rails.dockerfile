FROM rails:5.0
MAINTAINER Yuri Fialho <yurirfialho@gmail.com>

#ENV http_proxy http://10.67.120.43:3128
#ENV https_proxy http://10.67.120.43:3128

RUN mkdir -p /var/app
COPY ./app /var/app
WORKDIR /var/app
RUN bundle install
CMD rails -s -b 0.0.0.0