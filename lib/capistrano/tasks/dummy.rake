namespace :dummy do

  def strategy
    @strategy ||= Capistrano::Dummy.new(self, fetch(:git_strategy, Capistrano::Dummy::DefaultStrategy))
  end

  desc 'check simple remote command'
  task :check do
    on release_roles :all do
      strategy.check
    end
  end

  desc 'fake clone the repo to the non-existent cache'
  task :clone do
    on release_roles :all do
      within deploy_path do
        strategy.clone
      end
    end
  end

  desc 'fake update the repo mirror to not do anything'
  task :update do
    on release_roles :all do
      within repo_path do
        strategy.update
      end
    end
  end

  desc 'fake copy repo to nowhere'
  task :create_release do
    on release_roles :all do
      within repo_path do
        execute :mkdir, '-p', release_path
        strategy.release
      end
    end
  end

  desc 'fake determine the revision that will be deployed'
  task :set_current_revision do
    on release_roles :all do
      within repo_path do
        set :current_revision, strategy.fetch_revision
      end
    end
  end
end