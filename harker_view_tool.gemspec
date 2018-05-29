
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "harker_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "harker_view_tool"
  spec.version       = HarkerViewTool::VERSION
  spec.authors       = ["htharker42"]
  spec.email         = ["htharker@gmail.com"]

  spec.summary       = %q{ view specifc methods for my applications}
  spec.description   = %q{Creates method which can be called on web page to display copywrite info}
  spec.homepage      = "https://github.com/htharker42/harker_view_tool"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
