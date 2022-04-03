require 'redmine'

unless ProjectsHelper.included_modules.include?(ExtendProjectSetting)
  ProjectsHelper.send(:include, ExtendProjectSetting)
end

Redmine::Plugin.register :readme_at_repositories do
  name 'Readme At Repositories plugin'
  author 'Tsubasa Nagasawa'
  description 'Display "README" at repository tab'
  version '0.3.0'
  url 'https://github.com/ayaye/readme_at_repositories'
  author_url 'https://github.com/simeji/readme_at_repositories'

  project_module :readme_at_repository do
    permission :manage, :rar_project_settings => [:update], :require => :member
  end
end
