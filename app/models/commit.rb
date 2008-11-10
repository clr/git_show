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
  
end
