require 'spec_helper'

describe Chal do
  it {should belong_to(:creator).class_name("User")}
	it {should have_many(:solutions)}
	it {should have_many(:users).through(:solutions)}
	it {should have_many(:votes)}
	it {should have_many(:comments)}
end
