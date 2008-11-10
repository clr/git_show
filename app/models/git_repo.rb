class GitRepo
  def self.version
    `#{ GIT_COMMAND } --version` 
  end

  def self.commits
    `#{ GIT_COMMAND } log --pretty=format:"%H<|||>%an<|||>%ar<|||>%s%n"`.split( "\n\n" ).collect do |commit|
      parts = commit.split "<|||>"
      { :id => parts[0], :author => parts[1], :when => parts[2], :message => parts[3] }
    end
  end

  def self.previews
    @previews = []
    Dir.foreach( File.expand_path( File.join( RAILS_ROOT, 'preview' ) ) ) do |entry|
      location = File.expand_path( File.join( RAILS_ROOT, 'preview', entry ) )
      @previews << entry.to_i if File.directory?( location ) && ( entry[0] != "." )
    end
    @previews.sort
  end
  
end
