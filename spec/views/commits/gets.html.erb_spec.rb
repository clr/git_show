require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/commits/gets" do
  before(:each) do
    render 'commits/gets'
  end
  
  it "should have a list of links to the individual commits" do
    response.should have_tag( 'ol' ) do
      with_tag( 'li' ) do
        with_tag( 'a' ) # Link to individual commit.
        with_tag( 'br' ) 
        with_tag( 'p' ) # Commit message.
      end
    end
  end
end
