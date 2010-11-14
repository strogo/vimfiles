task :default => [:update]

desc "Initial Setup"
task :setup do
  system "git submodule init"
  Rake::Task[:update].invoke
  Rake::Task[:symlink].invoke
end

desc "Update Bundles"
task :update do
  system "git pull"
  system "git submodule update"
end

desc "Symlink Config"
task :symlink do
  pwd = File.dirname(__FILE__)

  if RUBY_PLATFORM =~ /win32/
    home = ENV["USERPROFILE"]

    system "mklink /d \"#{home}\vimfiles\" \"#{pwdj}\""
    system "mklink \"#{home}\_vimrc\" \"#{pwd}\vimrc\""
  else
    system "ln -s \"#{pwd}\" ~/.vim"
    system "ln -s \"#{pwd}/vimrc\" ~/.vimrc"
  end
end
