module ApplicationHelper

  def color_code( diff_line )
    if diff_line.match( /^\+/ )
      "<span style='color:darkblue;font-weight:bold'>#{ diff_line }</span>"
    elsif diff_line.match( /^\-/ )
      "<span style='color:grey'>#{ diff_line }</span>"
    else
      diff_line
    end
  end

end
