As an example, to start listening on vcan0 do the following

1. git clone https://github.com/tomekr/ruby-can.git
1. cd ruby-can/
1. bundle install
1. ruby lib/ruby_can.rb

Gem Setup
---
gem build ruby_can.gemspec
gem install ruby_can-0.0.1.gem


Cucumber Tests
---
bundle exec cucumber
