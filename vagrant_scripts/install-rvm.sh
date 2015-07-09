 #!/usr/bin/env bash

su - vagrant -c 'gem install bundler'
su - vagrant -c 'gem install pry'
su - vagrant -c '(cd /vagrant &&  bundle install)'
