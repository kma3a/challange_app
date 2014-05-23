require 'spec_helper'

describe Solution do
	it {should belong_to(:user)}
	it {should belong_to(:test)}
	it {should have_many(:votes)}
	it {should have_many(:comments)}
end