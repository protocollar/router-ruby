# frozen_string_literal: true

require_relative "lib/router/version"

Gem::Specification.new do |spec|
  spec.name = "router"
  spec.version = Router::VERSION
  spec.authors = ["Thomas Carr"]
  spec.email = ["9591402+htcarr3@users.noreply.github.com"]

  spec.summary = "Simple API Routing for Ruby"
  spec.description = "Generic routing library for Ruby API SDK's"
  spec.homepage = "https://github.com/protocollar/router-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/protocollar/router-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/protocollar/router-ruby/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
  spec.add_dependency "addressable", "~> 2.8", ">= 2.8.4"
  spec.add_dependency "zeitwerk", "~> 2.6", ">= 2.6.8"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
