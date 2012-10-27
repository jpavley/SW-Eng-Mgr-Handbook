require "constants"

-- ----------------------------------------------------------------------------
-- Identity Class
-- ----------------------------------------------------------------------------
-- Represents PII (Personally identifiable information)
-- From the Wikipedia: nformation that can be used to uniquely identify, 
-- contact, or locate a single person or can be used with other sources 
-- to uniquely identify a single individual.
-- ----------------------------------------------------------------------------

Identity = {} -- the table to hold the class

Identity.new = function(unique_id, first_name, last_name)
	local self = {} -- object of class
	
	-- private properties
	unique_id = unique_id or constants.kUnknownString
	first_name = constants.kUnknownString
	middle_name = constants.kUnknownString
	last_name = constants.kUnknownString
	gender = constants.kGenderUnknown
	date_of_birth = constants.kUnknownDate
	
	-- public getters
	self.get_unique_id = function() return unique_id end
	self.get_gender = function() return gender end
	self.get_first_name = function() return first_name end
	self.get_last_name = function() return last_name end
	self.get_middle_name = function() return middle_name end
	self.get_date_of_birth = function() return date_of_birth end
	
	-- public setters
	self.set_unique_id = function(num) unique_id = num end
	self.set_gender = function(str) gender = str end
	self.set_first_name = function(str) first_name = str end
	self.set_last_name = function(str) last_name = str end
	self.set_middle_name = function(str) middle_name = str end
	self.set_date_of_birth = function(str) date_of_birth = str end


	-- public methods
	
	self.show = function()
		print("Idenity: " .. unique_id 
		.. ", First Name: " .. first_name 
		.. ", Middle Name: " .. middle_name
		.. ", Last Name: " .. last_name 
		.. ". Date of Birth: " .. date_of_birth 
		.. ", Gender: " .. gender)
	end
		
	return self -- return the object!
end

-- unit tests

test_identity = Identity.new("111-11-111", "Charles", "Darwin")
test_identity.set_gender(constants.kGenderMale)
test_identity.set_middle_name("Robert")
test_identity.set_date_of_birth(os.date("%d/%m/%y"))
test_identity.show()

test2_identity = Identity.new()
test2_identity.show()

