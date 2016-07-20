user = "example"
name = "example"
root = "/home/#{user}/#{name}"
working_directory root
pid "#{root}/tmp/pids/unicorn.#{name}.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.#{name}.sock"
worker_processes 2
timeout 30
