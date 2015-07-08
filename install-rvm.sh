 #!/usr/bin/env bash

su - vagrant -c 'curl -sSL https://rvm.io/mpapis.asc | gpg --import -'
su - vagrant -c 'curl -sSL https://get.rvm.io | bash -s stable'
#su - vagrant -c 'rvm rvmrc warning ignore allgemfiles'
#su - vagrant -c 'rvm install ruby-2.2'
su - vagrant -c 'gem install bundler'
su - vagrant -c 'gem install pry'
su - vagrant -c '(cd /vagrant &&  bundle install)'
