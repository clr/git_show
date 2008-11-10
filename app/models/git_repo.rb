class GitRepo
  @@git_command = "git"
  @@git_dir = File.expand_path( File.join( RAILS_ROOT ) )
  
  def self.version
    `#{ @@git_command } --git-dir=#{ @@git_dir } --version` 
  end
end
