task :default do
  system "git submodule init"
  Rake::Task[:update].invoke
  Rake::Task[:symlink].invoke
end

desc "Update bundles"
task :update do
  system "git pull"
  system "git submodule update"
end

desc "Symlink file"
task :symlink do
  if RUBY_PLATFORM =~ /win32/
    home = ENV["USERPROFILE"]

    system "mklink #{home}\_vimrc #{home}\vimfiles\vimrc"
  else
    system "ln -s ~/.vim/vimrc ~/.vimrc"
  end
end
