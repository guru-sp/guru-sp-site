#require "rvm/capistrano"
#set :rvm_ruby_string, "1.9.3-p194"
#set :rvm_type, :system

require "bundler/capistrano"
set :application, "guru-sp-site"
set :scm, :git
set :repository,  "git://github.com/guru-sp/guru-sp-site.git"
set :keep_releases, 1
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

ssh_options[:forward_agent] = true
set :deploy_to, "/home/hlb/sites/gurusp"
set :deploy_via, :remote_cache
set :user, "hlb"
set :use_sudo, false

role :web, "74.117.56.227:30329"                          # Your HTTP server, Apache/etc
role :app, "74.117.56.227:30329"                          # This may be the same as your `Web` server
role :db,  "74.117.56.227:30329", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

before 'deploy:restart', 'deploy:migrate'
after 'deploy:finalize_update', 'deploy:update_config_symlinks'

load 'deploy/assets'
# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :update_config_symlinks do
    %w{database.yml pepper.yml}.each do |config|
      run "rm #{release_path}/config/#{config}"
      run "ln -nfs #{shared_path}/#{config} #{release_path}/config/#{config}"
    end
  end

end
