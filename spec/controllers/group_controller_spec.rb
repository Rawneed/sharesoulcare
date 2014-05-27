require 'spec_helper'

describe GroupController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'manage'" do
    it "returns http success" do
      get 'manage'
      response.should be_success
    end
  end

end
