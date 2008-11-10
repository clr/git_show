require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GitRepo do
  before(:each) do
    @valid_attributes = {
    }
  end

  it "should find the local repo" do
    GitRepo.version.should match( /^git version / )
  end

  it "should have multiple commits" do
    GitRepo.commits.length.should > 0
  end

  it "should have hash keys for each commit" do
    GitRepo.commits.each do |commit|
      commit.has_key?( :id ).should be_true
      commit.has_key?( :author ).should be_true
      commit.has_key?( :when ).should be_true
      commit.has_key?( :message ).should be_true
    end
  end

end
