require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Diff do
  before(:each) do
    @valid_commit_id = GitRepo.commits.first[:id]
  end

  it "should be returned from a Commit" do
    Commit.new( @valid_commit_id ).diffs.first.should be_a?( Diff )
  end
end
