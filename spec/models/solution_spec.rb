require 'spec_helper'

describe Solution do
	it {should belong_to(:user)}
	it {should belong_to(:challenge)}
end