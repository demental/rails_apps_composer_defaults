add_gem :html2slim, group: :development

after_everything do
  say_wizard "recipe converting all 2 slim and cleaning"

  copy_from_repo 'lib/tasks/erb2slim.rake', :repo => 'https://raw.github.com/demental/rails_apps_composer_defaults/master/'
  run 'bundle exec rake convert:erb_to:slim delete=true'

  git :add => '-A' if prefer :git, true
  git :commit => '-qm "rails_apps_composer: slimify all"' if prefer :git, true
end

__END__

name: slimify
description: 'Final slim conversion and cleanup'
category: configuration