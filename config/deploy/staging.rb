server 'dev-ca1.snoonet.org', port: 22, roles: [:web, :app, :db], primary: true
set :branch, `git rev-parse --abbrev-ref HEAD`.chomp
