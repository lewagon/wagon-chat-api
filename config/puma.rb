workers 0
threads_count = Integer(ENV["RAILS_MAX_THREADS"] || 5)
threads threads_count, threads_count

preload_app!

port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'
