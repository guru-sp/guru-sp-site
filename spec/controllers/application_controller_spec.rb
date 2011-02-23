require "spec_helper"

describe ApplicationController do
  context "GET index" do
    it "should return 200" do
      xhr :get, :index
      response.code.should == "200"
    end
  end
end