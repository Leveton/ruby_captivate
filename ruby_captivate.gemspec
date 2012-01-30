$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = "ruby_captivate"
  s.version = "1.0.34"
  s.authors = ["Michael Leveton"]
  s.date = %q{2012-01-27}
  s.description = 'Adobe Captivate reporting for Ruby'
  s.summary = s.description
  s.email = 'mleveton@prepcloud.com'
  s.files = `git ls-files`.split("\n")
  #s.files = ['README.txt', 'lib/ruby_captivate.rb','test/test_ruby_captivate.rb', 'bin/install.rb', 'bin/initializer_generator.rb']
  s.homepage = 'https://github.com/Leveton/ruby_captivate'
  s.has_rdoc = true
  s.rubyforge_project = 'ruby_captivate'
  s.bindir = "bin"
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('thor')
end
