require 'vlad'

namespace :vlad do
  # Path that bundler should install gems to, set to false to install to system gems.
  set :gem_install_path

  desc "Ensure bundler is up to date, and install any missing dependencies."
  remote_task :bundler, :roles => :web do
    gem_install_path ||= "#{shared_path}/gems"
    run "cd #{current_path} && (bundle check || bundle install --without development test #{path_option})"
  end
end
