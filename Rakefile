begin
  require 'rubygems'
rescue LoadError
  puts "Can't find RubyGems..."
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "riot-rails"
    gem.summary = "Test your Rails apps with Riot"
    gem.description = "Use the fast, expressive and concise Riot unit-testing framework to test your Rails apps with."
    gem.email = "daniel.schierbeck@gmail.com"
    gem.homepage = "http://github.com/dasch/riot-rails"
    gem.authors = ["Daniel Schierbeck"]
    gem.add_dependency 'riot'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
