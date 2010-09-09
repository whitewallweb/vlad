require 'vlad'

namespace :vlad do
  desc "Ensure bundler is up to date, and install any missing dependencies."
  remote_task :bundler, :roles => :web do
    run "cd #{current_path} && bundle install --deployment --without development test"
  end
end
