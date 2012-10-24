#!/usr/bin/env lua

Identity = {} -- the table to hold the class

Identity.new = function(unique_id, first_name)
	-- private properties
	local self = {} -- object of class
	
	unique_id = unique_id or math.random(1000000);
	first_name = first_name or "unknown"
	gender = "unknown"
	age = -1 -- unknown
	alive = true
	personality = "unknown"
	
	-- public getters
	self.get_gender = function() return gender end
	self.get_age = function() return age end
	self.is_alive = function() return alive end
	self.get_personality = function() return personality end
	
	-- public setters
	self.set_gender = function(g) gender = g end
	self.set_age = function(a) age = a end
	self.set_alive = function(a) alive = a end
	self.set_personality = function(p) personality = p end

	-- public methods
	
	self.show = function()
		print("Idenity: " .. unique_id 
		.. ", First Name: " .. first_name 
		.. ", Gender: " .. gender 
		.. ", Age: " .. age 
		.. ", Alive: " .. tostring(alive) 
		.. ", Personality: " .. personality)	
	end
	
	return self -- return the object!
end

-- unit tests

test_identity = Identity.new(1223345, "Tony")
test_identity.show()

test2_identity = Identity.new()
test2_identity.show()

test3_identity = Identity.new()
test3_identity.show()


