require 'spec_helper'

describe Article do
  before(:each) do
    @valid_attrs = {
      :title => "Title goes here",
      :body => "Body goes here"
    }
  end

  it "should create new instance" do
    Article.create!(@valid_attrs)
  end

  it "should require a title" do
    no_title = Article.create(@valid_attrs.merge(:title => ''))
    no_title.should_not be_valid
  end

  it "should require a body" do
    no_body = Article.create(@valid_attrs.merge(:body => ''))
    no_body.should_not be_valid
  end
end

