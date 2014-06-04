require 'spec_helper'

describe User do
	it {should have_many(:chals), foreign_key: "creator_id"}
	it {should have_many(:solutions)}
	it {should have_many(:solved_tests).through(:solutions).source(:chal)}
	it {should have_many(:votes)}
	it {should have_many(:comments), foreign_key: "author_id"}
end