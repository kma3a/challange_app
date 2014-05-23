require 'spec_helper'

describe User do
	it {should have_many(:tests)}
	it {should have_many(:solutions)}
	it {should have_many(:solved_tests).through(:solutions).source(:tests)}
	it {should have_many(:votes)}
	it {should have_many(:comments)}
end