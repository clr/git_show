class Commit
  attr_accessor :id

  def initialize( hash_id )
    @id = hash_id
  end
  
  def diffs
    `#{ GIT_COMMAND } show #{ @id }`.split( "diff --git " )[ 1..-1 ].collect do |diff|
      lines = diff.split "\n"
      { :file => lines[2][ 5..-1 ], :changes => lines[ 4..-1 ] }
    end
  end
  
  def make_preview
    next_preview = ( GitRepo.previews.last || -1 ) + 1
    port = 4000 + next_preview
    `#{ GIT_COMMAND } checkout #{ @id }; #{ GIT_COMMAND } clone -l -s ./ #{ File.expand_path( File.join( RAILS_ROOT, 'preview', next_preview.to_s ) ) }; #{ GIT_COMMAND } checkout master`
    `#{ File.expand_path( File.join( RAILS_ROOT, 'preview', 'script', 'server' ) ) } -p #{ port }`
    return port
  end
  
end
