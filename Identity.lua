#!/usr/bin/env lua

Identity = {} -- the table to hold the class

Identity.new = function(unique_id, first_name, last_name)
	-- private properties
	local self = {} -- object of class
	
	unique_id = unique_id or "unknown";
	first_name = first_name or "unknown"
	last_name = last_name or "unknow"
	gender = "unknown"
	age = -1 -- unknown
	alive = true
	personality = {}
	
	-- public getters
	self.get_gender = function() return gender end
	self.get_age = function() return age end
	self.is_alive = function() return alive end
	self.get_personality = function() return personality end
	self.get_first_name = function() return first_name end
	self.get_last_name = function() return last_name end
	
	-- public setters
	self.set_gender = function(g) gender = g end
	self.set_age = function(a) age = a end
	self.set_alive = function(a) alive = a end
	self.set_personality = function(p) personality = p end
	self.set_first_name = function(fn) first_name = fn end
	self.set_last_name = function(ln) last_name =ln end


	-- public methods
	
	self.show = function()
		print("Idenity: " .. unique_id 
		.. ", First Name: " .. first_name 
		.. ", Last Name: " .. last_name 
		.. ", Gender: " .. gender 
		.. ", Age: " .. age 
		.. ", Alive: " .. tostring(alive) 
		.. ", Personality: " .. table.concat(personality, ", "))	
	end
		
	return self -- return the object!
end

-- unit tests

test_identity = Identity.new("111-11-111", "Tony")
test_identity.set_gender("male")
test_identity.set_age(27)
test_identity.set_alive(true)
test_identity.set_personality({"loner", "quiet", "thoughtful"})
test_identity.set_first_name("Charlies")
test_identity.set_last_name("Darwin")
test_identity.show()

test2_identity = Identity.new()
test2_identity.show()

