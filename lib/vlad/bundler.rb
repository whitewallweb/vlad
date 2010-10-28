require 'vlad'

namespace :vlad do
  # Path that bundler should install gems to, set to false to install to system gems.
  set :gem_install_path

  desc "Ensure bundler is up to date, and install any missing dependencies."
  remote_task :bundler, :roles => :web do
    unless gem_install_path
      # If we're caching gems in vendor, copy the existing gems (speeds things up)
      puts "Copying gems from previous release to speed up installation ..."
      begin
        run "cp -Rf #{previous_release}/vendor/ruby #{latest_release}/vendor" 
      rescue Rake::CommandFailedError
        puts "Copy failed. Most likely the previous release did not have gems installed to the same place."
      end

      install_path = "vendor"
    else
      install_path = gem_install_path
    end
    run "cd #{latest_release} && (bundle check > /dev/null || bundle install --without development test --path #{install_path})"
  end
end
