class GitRepo
  @@git_command = "git"
  @@git_dir = File.expand_path( File.join( RAILS_ROOT, '.git' ) )
  
  def self.version
    `#{ @@git_command } --git-dir=#{ @@git_dir } --version` 
  end

  def self.commits
    `#{ @@git_command } --git-dir=#{ @@git_dir } log --pretty=format:"%h<|||>%an<|||>%ar<|||>%s%n"`.split( "\n\n" ).collect do |commit|
      parts = commit.split "<|||>"
      { :id => parts[0], :author => parts[1], :when => parts[2], :message => parts[3] }
    end
  end

end
