class PreviewsController < ApplicationController
  include RestfulController
  
  def post
    @commit = Commit.new( params[:id] )
    port = @commit.make_preview
    redirect_to "http://localhost:#{ port }"
  end

  def prepare_restful_instance_variables; end

end
