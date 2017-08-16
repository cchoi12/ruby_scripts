require 'thread'

Thread.abort_on_exception = true
STDOUT.sync = true

work = Queue.new

workers = []

workers << Thread.new do
  loop do
    work.pop.call
  end
end

work << -> { puts 'hi'; sleep 1; puts 'bye'}
