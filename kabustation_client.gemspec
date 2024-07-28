# -*- encoding: utf-8 -*-

=begin
#kabuステーションAPI

## 定義情報   REST APIのコード一覧、エンドポイントは下記リンク参照     - [REST APIコード一覧](../ptal/error.html)

The version of the OpenAPI document: 1.5

Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "kabustation_client/version"

Gem::Specification.new do |s|
  s.name        = "kabustation_client"
  s.version     = KabustationClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["kyohah"]
  s.email       = ["kyohah@gmail.com"]
  s.homepage    = "https://github.com/kyohah/kabustation_client-ruby"
  s.summary     = "kabuステーションAPI Ruby Gem"
  s.description = "# 定義情報   REST APIのコード一覧、エンドポイントは下記リンク参照     - [REST APIコード一覧](../ptal/error.html)"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'websocket-client-simple'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  s.test_files    = `find spec/*`.split("\n")
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]
end
