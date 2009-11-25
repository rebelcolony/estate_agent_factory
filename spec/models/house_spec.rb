require File.dirname(__FILE__) + '/../spec_helper'

describe House do

	before do
		@house = House.new(:title => "sample house title")
	end

	it "should have a title" do
		@house.title = ' '
		@house.should_not be_valid
	end

	it "should have a title that's at least 10 characters" do
		@house.title = "a"
		@house.should_not be_valid
	end

	it "should have a title that's at less than 60 characters" do
		@house.title = "i'm a title that is longgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg"
		@house.should_not be_valid
	end

	it "should have a teaser" do
		@house.teaser = ' '
		@house.should_not be_valid
	end

	it "should have a description" do
		@house.description = ' '
		@house.should_not be_valid
	end

	it "should have a price" do
		@house.price = ' '
		@house.should_not be_valid
	end
end
