require 'vlad'

namespace :vlad do
  ##
  # Apache web server

  set :web_command, "apachectl"
  set :using_apache, true

  desc "(Re)Start the web servers"

  remote_task :start_web, :roles => :web  do
    run "#{web_command} restart" if using_apache
  end

  desc "Stop the web servers"

  remote_task :stop_web, :roles => :web  do
    run "#{web_command} stop" if using_apache
  end

  ##
  # Everything HTTP.

  desc "(Re)Start the web and app servers"

  remote_task :start do
    Rake::Task['vlad:start_app'].invoke
    Rake::Task['vlad:start_web'].invoke
  end

  desc "Stop the web and app servers"

  remote_task :stop do
    Rake::Task['vlad:stop_app'].invoke
    Rake::Task['vlad:stop_web'].invoke
  end
end
