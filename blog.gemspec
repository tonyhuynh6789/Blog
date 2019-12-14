lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "blog/version"

Gem::Specification.new do |spec|
  spec.name          = "blog"
  spec.version       = Blog::VERSION
  spec.authors       = ["tonyhuynh6789"]
  spec.email         = ["duc_thinh_03@yahoo.com"]

  spec.summary       =  "My CLI project"
  spec.description   =  "My CLI project"
  spec.homepage      =  "https://github.com/tonyhuynh6789/Blog"

  spec.metadata["allowed_push_host"] = 'http://rubygems.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tonyhuynh6789/Blog"
  spec.metadata["changelog_uri"] = "https://github.com/tonyhuynh6789/Blog"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "rake", "~> 10.0"
end
