require 'rake/clean'

CLOBBER.include('_site')
SASS_PATHS = 'css/screen.scss:css/screen.css'

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
  sh 'jekyll --server --auto'
end

desc 'Build the site'
task :build => [:compile_css, :clobber] do
  sh 'jekyll'
end
