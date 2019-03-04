FROM ruby:2.5 
RUN apt-get update && apt-get install -y     

ENV CHOKIDAR_USEPOLLING 1
EXPOSE 4000

#RUN mkdir -p /app 
#WORKDIR /app
#COPY Gemfile Gemfile.lock ./ 

#RUN gem install bundler && bundle install --jobs 20 --retry 5
RUN gem install bundler
COPY Gemfile ./ 
RUN bundle install
#RUN gem install jekyll bundler

#RUN jekyll new myblog
#RUN cd myblog
#RUN bundle exec jekyll serve

RUN mkdir -p /app 
WORKDIR /app
#COPY . ./
#RUN bundle install

CMD "/bin/bash"
#CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

# docker build -t githubpagebase .
# docker run -it --name gh-web githubpagebase
# docker run  --rm -it -p 4000:4000 -v %cd%:/app -w /app githubpagebase /bin/bash
#     bundle exec jekyll serve -w --config "_config.yml,_config_dev.yml"

#-------------------------
# FROM ruby:2.3.1

# RUN apt-get -qq update && \
# 	apt-get -qq install nodejs -y && \
# 	gem install -q bundler -v 1.12.3

# RUN mkdir -p /etc/jekyll && \
# 	printf 'source "https://rubygems.org"\ngem "github-pages","78"\ngem "execjs","2.7.0"\ngem "rouge","1.10.1"' > /etc/jekyll/Gemfile && \
# 	printf "\nBuilding required Ruby gems. Please wait..." && \
# 	bundle install --gemfile /etc/jekyll/Gemfile --clean --quiet 

# RUN apt-get clean && \
# 	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ENV BUNDLE_GEMFILE /etc/jekyll/Gemfile

# EXPOSE 4000

# ENTRYPOINT ["bundle", "exec"]

# CMD ["jekyll", "serve","--host=0.0.0.0"]
#----------------------

# λ docker build -t compostelatech_githubpages .
# P$> docker run --rm -it -p 4000:4000 -v ${PWD}:/app -w /app compostelatech_githubpages
# > docker run  --rm -it -p 4000:4000 -v %cd%:/app -w /app compostelatech_githubpages bundle exec jekyll serve -w --host=0.0.0.0 --config "_config.yml,_config_dev.yml"

# bundle update


# FROM ruby:2.6.1
# RUN apt-get -qq update 
# RUN	apt-get -qq install nodejs -y 
# RUN	gem install -q bundler -v v3.0.2 

# RUN jekyll new myblog
# RUN cd myblog
# RUN bundle exec jekyll serve



# RUN mkdir -p /etc/jekyll && \
# 	printf 'source "https://rubygems.org"\ngem "github-pages","78"\ngem "execjs","2.7.0"\ngem "rouge","1.10.1"' > /etc/jekyll/Gemfile && \
# 	printf "\nBuilding required Ruby gems. Please wait..." && \
# 	bundle install --gemfile /etc/jekyll/Gemfile --clean --quiet

# RUN apt-get clean && \
# 	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ENV BUNDLE_GEMFILE /etc/jekyll/Gemfile  

# EXPOSE 4000

# ENTRYPOINT ["bundle", "exec"]

# CMD ["jekyll", "serve","--host=0.0.0.0"]


#gem install jekyll bundler

#    gem install jekyll bundler