require 'spec_helper'

describe PagesController do

  describe "GET 'lookbook'" do
    it "returns http success" do
      get 'lookbook'
      response.should be_success
    end
  end

end
