require 'bundler/capistrano'

server "con.cosmos.snoonet.org", :web, :app, :db, primary: true

set :application, 'snoonet.org'
set :deploy_to, "/home/deployer/snoonet"

set :user, "deployer"
set :deploy_via, :remote_cache
set :use_sudo, false
set :repository,  "git@github.com:snoonetIRC/snoonet.org"

set :scm, :git

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

# keep last 5 releases, no more
after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  %w[start stop restart].each do |command|
    desc "#{command} unicorn server"
    task command, roles: :app, except: {no_release: true} do
      run "/etc/init.d/unicorn_#{application} #{command}"
    end
  end

  task :setup_config, roles: :app do
    sudo "ln -nfs #{current_path}/config/unicorn_init.sh /etc/init.d/unicorn_#{application}"
    run "mkdir -p #{shared_path}/config"
  end
  after "deploy:setup", "deploy:setup_config"

  task :symlink_config, roles: :app do
    run "rm #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  after "deploy:finalize_update", "deploy:symlink_config"
end
