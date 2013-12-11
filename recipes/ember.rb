add_gem 'ember-rails'
add_gem 'ember-source'
add_gem 'coffee-rails'

after_bundler do
  run 'rails generate ember:bootstrap -g --javascript-engine coffee'
  run 'rails generate ember:install'
  run 'rake tmp:clear'
end


__END__

name: ember
description: "Adding emberjs to your application"
author: demental

category: frontend
requires: [setup]