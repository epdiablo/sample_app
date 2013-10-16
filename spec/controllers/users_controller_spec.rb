require 'spec_helper'

describe UsersController do

  describe "GET 'show'" do
    
    before(:each) do
      @user = Factory(:user)
    end
    
    it "should be succesful" do
      get :show, :id => @user.id
      response.should be_success
    end
  end


  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
  end

end
