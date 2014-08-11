Gem::Specification.new do |spec|
  spec.name          = "lita-y"
  spec.version       = "0.0.1"
  spec.authors       = ["Joel Cogen"]
  spec.email         = ["joel@redilio.us"]
  spec.description   = %q{A Lita handler to respond to "Lita y?".}
  spec.summary       = %q{A Lita handler to respond to "Lita y?".}
  spec.homepage      = "https://github.com/joelcogen/lita-y"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"
end
