require 'metrozd'

#http://stackoverflow.com/questions/1878640/including-rake-tasks-in-gems
#Dir["#{RAILS_ROOT}/vendor/plugins/*/tasks/**/*.rake"].sort.each { |ext| load ext }
#Dir["#{RAILS_ROOT}/vendor/plugins/*/lib/tasks/**/*.rake"].sort.each { |ext| load ext }

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

