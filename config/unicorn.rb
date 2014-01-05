app_path = "/var/www/outdoors/"

listen 3007 # by default Unicorn listens on port 8080
worker_processes 2 # this should be >= nr_cpus
listen "/var/www/outdoors/tmp/sockets/unicorn.sock", :backlog => 64
pid "/var/www/outdoors//tmp/pids/unicorn.pid"
stderr_path "/var/www/outdoors/log/unicorn.log"
stdout_path "/var/www/outdoors/log/unicorn.log"

