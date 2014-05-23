require 'spec_helper'

describe User do
	it {should have_many(:challenges)}
	it {should have_many(:solutions)}
	it {should have_many(:solved_challenges).through(:solutions).source(:challenges)}
	it {should have_many(:votes)}
	it {should have_many(:comments)}
end