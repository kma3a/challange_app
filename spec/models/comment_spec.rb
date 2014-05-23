require 'spec_helper'

describe Comment do 
	it {should belong_to(:commentable)}
	it {should belong_to(:author).class_name("User")}
end