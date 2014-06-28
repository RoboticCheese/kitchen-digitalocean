# -*- encoding: utf-8 -*-
#
# Author:: Greg Fitzgerald (<greg@gregf.org>)
#
# Copyright (C) 2013, Greg Fitzgerald
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'rspec'
require 'webmock/rspec'
require 'simplecov'
require 'simplecov-console'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  Coveralls::SimpleCov::Formatter,
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::Console
]
SimpleCov.minimum_coverage 90
SimpleCov.start

WebMock.disable_net_connect!(:allow_localhost => true)

require_relative '../lib/kitchen/driver/digitalocean'

def regions_output
  File.read(File.join(File.dirname(__FILE__), 'mocks', 'regions.txt' ))
end

def flavors_output
  File.read(File.join(File.dirname(__FILE__), 'mocks', 'flavors.txt' ))
end

def images_output
  File.read(File.join(File.dirname(__FILE__), 'mocks', 'images.txt' ))
end

# vim: ai et ts=2 sts=2 sw=2 ft=ruby
