# -*- ruby -*-

require 'rubygems'
require 'hoe'
require 'hoe/signing'
require './tasks/yard.rb'

Hoe.spec('yard-dm') do
  self.version = '0.1.0'
  self.developer('Postmodern', 'postmodern.mod3@gmail.com')

  self.readme_file = 'README.rdoc'
  self.history_file = 'History.rdoc'

  self.rspec_options += ['--colour', '--format', 'specdoc']

  self.extra_deps += [
    ['yard', '>=0.4.0']
  ]

  self.extra_dev_deps += [
    ['rspec', '>=1.2.9']
  ]

  self.spec_extras.merge!(:has_rdoc => 'yard')
end

# vim: syntax=ruby
