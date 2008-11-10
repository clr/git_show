require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Commit do
  before(:each) do
    @valid_commit_id = GitRepo.commits.first[:id]
  end

  it "should store this commit's id" do
    commit = Commit.new( @valid_commit_id )
    commit.id.should == @valid_commit_id
  end
end
