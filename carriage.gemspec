require_relative 'lib/carriage/version'

Gem::Specification.new do |spec|
  spec.name          = "carriage"
  spec.version       = Carriage::VERSION
  spec.authors       = ["Stanislav (Stas) Katkov"]
  spec.email         = ["sk@skylup.com"]

  spec.summary       = "Carriage is a Ruby wrapper to Amazon Product Advertising API 5.0 - Cart Form"
  spec.description   = "This gem helps add any number of items to a customer's shopping cart and sending him to Amazon website to complete his order."
  spec.homepage      = "https://www.github.com/skatkov/carriage"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.github.com/skatkov/carriage"
  spec.metadata["changelog_uri"] = "https://github.com/skatkov/carriage/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'm'
end
