#!/usr/bin/env lua

Identity = {} -- the table to hold the class

Identity.new = function(unique_id)
	-- private properties
	local self = {} -- object of class
	unique_id = unique_id or math.random();
	-- getters
	-- setters
	-- methods
	self.show = function()
		print("Idenity: " .. unique_id)	
	end
	
	return self -- return the object!
end

-- unit tests

test_identity = Identity.new("John")
test_identity.show()

