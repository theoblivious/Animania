# execute me with rake db:nuke_pave
namespace :db do
  desc "drops, creates, migrates, and seeds database"
  unless Rails.env == "Production"
    task :nuke_pave => %w(environment db:drop db:create db:migrate db:seed) do
      # If you have a sample file that creates data for you to play with locally:
      # Rake::Task["db:sample"].execute if Rails.env == "development"
      puts "Nuke and pave of #{Rails.env} complete."
    end
  end
end
