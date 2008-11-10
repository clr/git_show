class CommitsController < ApplicationController
  include RestfulController
  
  def gets
  end

  def get
    @commit = Commit.new( params[:id] )
  end

  def prepare_restful_instance_variables; end
  
end
