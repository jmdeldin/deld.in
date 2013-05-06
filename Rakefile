require 'rake/clean'

CLOBBER.include('_site')
SASS_PATHS = 'assets/css/scss/screen.scss:assets/css/screen.css'

desc 'Auto-compile SCSS'
task :watch do
  sh "scss --watch #{SASS_PATHS}"
end

desc 'Compile SCSS'
task :compile_css do
  sh "scss #{SASS_PATHS}"
end

desc 'Launch the Jekyll server'
task :server => :clobber do
  sh 'jekyll serve --watch --port 5000'
end

desc 'Build the site'
task :build => [:compile_css, :clobber] do
  sh 'jekyll build'
end
