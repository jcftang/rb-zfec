require "rubygems/package_task"
require 'rake/extensiontask'

spec = Gem::Specification.new do |s|
  s.name = "fec"
  s.platform = Gem::Platform::RUBY
  s.version = "0.0.1"
  s.summary = "Test of Ruby C extension with FEC"
  s.description = "A simple Ruby C extension that contains building blocks for fec/zfec"
  s.author = "meh"
  s.email = "moo"
  s.homepage = "http://noneyet"

  s.files = FileList["ext/**/*.{c,rb}", "Rakefile"]
  s.extensions = FileList["ext/**/extconf.rb"]
end

Rake::ExtensionTask.new('fec', spec) do |ext|
  ext.cross_compile = true if RUBY_PLATFORM !~ /mswin|mingw/
end

Gem::PackageTask.new(spec) do |pkg|
  pkg.need_zip = false
  pkg.need_tar = false
end

task :test => [:compile] do
  ruby %q(-Ilib -rfec -e "puts 'done'")
end
