add_gem 'devise-i18n-views'


after_bundler do
  say_wizard "setting up devise i18n templates and yml for english"
  run 'bundle exec rails g devise:views:i18n_templates'
  run 'rails g devise:views:locale en'
end

__END__

name: devise_i18n
description: 'Using 18n views for devise'
category: configuration