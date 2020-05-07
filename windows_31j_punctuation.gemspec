require_relative 'lib/windows_31j_punctuation/version'

Gem::Specification.new do |spec|
  spec.name          = "windows_31j_punctuation"
  spec.version       = Windows31jPunctuation::VERSION
  spec.authors       = ["labocho"]
  spec.email         = ["labocho@penguinlab.jp"]

  spec.summary       = "Unify visually confusable Unicode punctuations to encode Windows-31J"
  spec.description   = "Unify visually confusable Unicode punctuations to encode Windows-31J"
  spec.homepage      = "https://github.com/socioart/windows_31j_punctuation"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/socioart/windows_31j_punctuation"
  spec.metadata["changelog_uri"] = "https://github.com/socioart/windows_31j_punctuation/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
