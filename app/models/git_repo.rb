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

end
