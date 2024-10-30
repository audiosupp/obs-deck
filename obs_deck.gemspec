# frozen_string_literal: true

require_relative "lib/obs_deck/version"

Gem::Specification.new do |spec|
  spec.name          = "obs_deck"
  spec.version       = ObsDeck::VERSION
  spec.authors       = ["audiosupp"]
  spec.email         = "leaveitblank@mail.com"

  spec.summary       = "Oblique Strategies in the Terminal CLI."
  spec.description   = "I wanted to create the Oblique Strategies gem myself because I'm learning, and now I have created it."
  spec.homepage      = "https://github.com/audiosupp/obs-deck/"
  spec.required_ruby_version = ">= 3.0.0"

  spec.license       = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/audiosupp/obs-deck/"

  # Specify which files should be added to the gem when it is released.
  spec.files         = Dir["lib/**/*.rb"] + Dir["lib/obs_deck/modules/*.rb"] + Dir["lib/decks/*.txt"]

  spec.bindir        = "exe"
  spec.executables   = ["obs_deck"]
  spec.require_paths = ["lib"]

  # Add dependencies
  spec.add_dependency 'tty-prompt', '~> 0.23.1'
end
