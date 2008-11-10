require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CommitsController do

  #Delete these examples and add some real ones
  it "should use CommitsController" do
    controller.should be_an_instance_of(CommitsController)
  end


  describe "GET 'gets'" do
    it "should be successful" do
      get 'gets'
      response.should be_success
    end
  end

  describe "GET 'get'" do
    it "should be successful" do
      get 'get'
      response.should be_success
    end
  end
end
