before_config do
  # Code here is run before any configuration prompts.
end


# read recipe configuration parameters and set global preferences
# case config['foo']
#   when 'foobar'
#     prefs[:foo] = 'foobar'
#   when 'foobaz'
#     prefs[:foo] = 'foobaz'
# end


create_file '.bowerrc', <<BOWERRC
{
  "directory": "vendor/assets/components"
}
BOWERRC

run 'npm install -g bower'
run 'bower init'

after_bundler do
  # Code here is run after Bundler installs all the gems for the project.
  # Use this section to run generators and rake tasks.
  # Download any files from a repository for models, controllers, views, and routes.
  # copy_from_repo 'app/models/foo.rb'
  # copy_from_repo 'app/controllers/foo_controller.rb'
  # copy_from_repo 'app/views/foo/index.html.erb'
  # route "root :to => 'foo#index'"
end

after_everything do
  # This block is run after the 'after_bundler' block.
  # Use this section to finalize the application.
  # Run database migrations or make a final git commit.
end

# A recipe has two parts: the Ruby code and YAML matter that comes
# after a blank line with the __END__ keyword.

__END__

name: bower
description: "Adding bower to your application for managing frontend packages"
author: demental

category: frontend
requires: [setup]
run_after: [setup, extras]
args:

config:
  # - foo:
  #     type: multiple_choice
  #     prompt: What kind of foo do you prefer?
  #     choices: [ ["Foobar", "foobar"], ["Foobaz", "foobaz"] ]