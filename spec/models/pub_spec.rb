# spec/models/pub_spec.rb
require 'spec_helper'

describe Pub do
  it "has a valid factory" do
    FactoryGirl.create(:pub).should be_valid
  end
  it "is invalid without a title"
  it "is invalid without a description"
  it "is invalid without a place"
  it "is invalid without a address"

end