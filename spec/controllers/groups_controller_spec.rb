require 'spec_helper'

describe GroupsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'find'" do
    it "returns http success" do
      get 'find'
      response.should be_success
    end
  end

  describe "GET 'start'" do
    it "returns http success" do
      get 'start'
      response.should be_success
    end
  end

  describe "GET 'connect'" do
    it "returns http success" do
      get 'connect'
      response.should be_success
    end
  end

end
