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
	
	-- The following five personality trait score are based on Lewis Goldberg's 
	-- five-dimension personality model, nicknamed the "Big Five." I found this 
	-- model more useful than "personality types" or other theories like behavorist,
	-- social cognitive, humanistic, etc... I don't need to understand the underlying
	-- mechansims. Traits are easy to communicate and most people feel they have some
	-- control over their traits. This my own interpertation based on real world
	-- experience of leading and managing people for over 20 years. Your milage may
	-- vary :)
	
	openess_score = constants.kUnknownNumber 
	-- 0 = practical, conforming, and internested in routine
	-- 5 = will stick to plan but handles changes well, thinks outside (but not too far outside) the box
	-- 10 = imaginitive, independent, interested in variety
	
	conscientiousness_score  = constants.kUnknownNumber
	-- 0 = careless, disorganized, implusive
	-- 5 = will take calculated risks, doesn't reply on heavy processes, communicates appropriately
	-- 10 = organized, careful, disciplined
	
	extraversion_score = constants.kUnknownNumber
	-- 0 = retiring, somber, reserved
	-- 5 = will work seriously but able to integreate well with team, not disruptive
	-- 10 = sociable, fun-loving, affectionate
	
	agreeableness_score = constants.kUnknownNumber
	-- 0 = ruthless, suspicious, uncoorerative
	-- 5 = gets own projects down but helpful to others, no hidden agendas
	-- 10 = softheated, trusting, helpful
	
	neuroticism_score = constants.kUnknownNumber
	-- 0 = calm, secure, self-satisfied
	-- 5 = steady, dependible, not over confident, and only complains about real problems
	-- 10 = anxious, insecure, self-pitying
		

	-- public getters
	self.get_unique_id = function() return unique_id end
	self.get_openess_score = function() return openess_score end
	self.get_conscientiousness_score = function() return conscientiousness_score end
	self.get_extraversion_score = function() return extraversion_score end
	self.get_agreeableness_score = function() return agreeableness_score end
	self.get_neuroticism_score = function() return neuroticism_score end

	
	-- public setters
	self.set_unique_id = function(num) unique_id = num end
	self.set_openess_score = function(num) openess_score = num end
	self.set_conscientiousness_score = function(num) conscientiousness_score = num end
	self.set_extraversion_score = function(num) extraversion_score = num end
	self.set_agreeableness_score = function(num) agreeableness_score = num end
	self.set_neuroticism_score = function(num) neuroticism_score = num end

	-- public methods
	
	self.show = function()
		print("Personality: " .. unique_id
		.. ". Openess: " .. openess_score 
		.. ", Conscientiousness: " .. conscientiousness_score
		.. ". Extraversion: " .. extraversion_score
		.. ", Agreeableness: " .. agreeableness_score
		.. ". Neuroticism: " .. neuroticism_score)

	end
		
	return self -- return the object!
end
	