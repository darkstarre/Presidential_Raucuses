task default: :test
task default: :rubocop

desc 'Say hello!'
task :hello do
    puts "hello, world!"
end

desc 'Run my tests!'
task :test do
    sh "bundle exec mrspec"
end

desc 'Fuck tha Police'
task :rubocop do
  sh "bundle exec rubocop"
end
