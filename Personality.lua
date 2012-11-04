module(..., package.seeall)
require "constants"

-- ----------------------------------------------------------------------------
-- Personality Class
-- ----------------------------------------------------------------------------
-- Represents Personality (Psychology)
-- From the Wikipedia: 
-- "Personality" can be defined as a dynamic and organized set of 
-- characteristics possessed by a person that uniquely influences his or her 
-- cognitions, emotions,interpersonal orientations motivations, and behaviors 
-- in various situations. 
-- ----------------------------------------------------------------------------

Personality = {} -- the table to hold the class

Personality.new = function(unique_id)
	local self = {} -- object of class
	
	-- private properties
	unique_id = unique_id or constants.kUnknownString

	-- public getters
	self.get_unique_id = function() return unique_id end
	
	-- public setters
	self.set_unique_id = function(num) unique_id = num end

	-- public methods
	
	self.show = function()
		print("Personality: " .. unique_id)
	end
		
	return self -- return the object!
end
	
