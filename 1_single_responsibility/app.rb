require 'date'

require_relative './formatter/html'
require_relative './formatter/json'
require_relative './repository'
require_relative './reporter'

# Reporter is initialized with an instance of the repository
# and the instance of the formatter.
# Reporter#between method called with +start+ and +finish+ dates.

start  = Date.new(2018, 1, 1)
finish = Date.new(2018, 1, 9)

puts 'Using HTML formatter'
reporter = Reporter.new(Repository.new, Formatter::HTML.new)
puts reporter.between(start, finish)

puts 'Using JSON formatter'
reporter = Reporter.new(Repository.new, Formatter::JSON.new)
puts reporter.between(start, finish)
