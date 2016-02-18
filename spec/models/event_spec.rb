# spec/models/event_spec.rb
require 'spec_helper'

describe Event do
  it "has a valid factory" do
    FactoryGirl.create(:event).should be_valid
  end
  it "is invalid without a title"
  it "is invalid without a description"
  it "is invalid without a place"
  it "is invalid without a address"
  it "is invalid without a date"
  it "is invalid without a time"

end