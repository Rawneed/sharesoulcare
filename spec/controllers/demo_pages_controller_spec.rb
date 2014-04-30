require 'spec_helper'

describe DemoPagesController do

  describe "GET 'guest-home-page'" do
    it "returns http success" do
      get 'guest-home-page'
      response.should be_success
    end
  end

  describe "GET 'user-home-page'" do
    it "returns http success" do
      get 'user-home-page'
      response.should be_success
    end
  end

  describe "GET 'admin-home-page'" do
    it "returns http success" do
      get 'admin-home-page'
      response.should be_success
    end
  end

  describe "GET 'profil-page'" do
    it "returns http success" do
      get 'profil-page'
      response.should be_success
    end
  end

  describe "GET 'events-page'" do
    it "returns http success" do
      get 'events-page'
      response.should be_success
    end
  end

  describe "GET 'discussion-page'" do
    it "returns http success" do
      get 'discussion-page'
      response.should be_success
    end
  end

end
