require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('metrozd', '0.1.0') do |p|
  p.description    = "Generate a US Metro Database"
  p.url            = "http://github.com/jbwyatt4/metrozd.git"
  p.author         = "John B. Wyatt IV"
  p.email          = "jbwyatt4@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = ["rails"]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
