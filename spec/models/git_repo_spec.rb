require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GitRepo do
  before(:each) do
    @valid_attributes = {
    }
  end

  it "should find the local repo" do
    GitRepo.version.should match( /^git version / )
  end
end
