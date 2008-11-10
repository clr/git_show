require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GitRepo do
  before(:each) do
    @valid_attributes = {
    }
  end

  it "should create a new instance given valid attributes" do
    GitRepo.create!(@valid_attributes)
  end
end
