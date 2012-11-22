--[[

    Software Engineering Manager's Handbook
     
    Copyright © 2012 John Pavley (http://www.pavley.com).
    All Rights Reserved.
     
    Permission is hereby granted, free of charge, to any person 
    obtaining a copy of this software to deal in the Software without 
    restriction, including without limitation the rights to use, 
    copy, modify, merge, publish, distribute, sublicense, and/or 
    sell copies of the Software, and to permit persons to whom the 
    Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be 
    included in all copies or substantial portions of the Software.
    If you find this software useful please give www.chipmunkav.com a mention.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
    OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR 
    ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
    CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN 
    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

--]]


module(..., package.seeall)
require "constants"
require "Json"

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

Class = {} -- the table to hold the class

Class.new = function(unique_id)
	local self = {} -- object of class
	
	-- private properties
    
    properties = {

	["unique_id"] = unique_id or constants.kUnknownString,
	
	-- The following five personality trait score are based on Lewis Goldberg's 
	-- five-dimension personality model, nicknamed the "Big Five." I found this 
	-- model more useful than "personality types" or other theories like behavorist,
	-- social cognitive, humanistic, etc... I don't need to understand the underlying
	-- mechansims. Traits are easy to communicate and most people feel they have some
	-- control over their traits. This my own interpertation based on real world
	-- experience of leading and managing people for over 20 years. Your milage may
	-- vary :)
	
	["openess_score"] = constants.kUnknownNumber,
	-- 0 = practical, conforming, and internested in routine
	-- 5 = will stick to plan but handles changes well, thinks outside (but not too far outside) the box
	-- 10 = imaginitive, independent, interested in variety
	
	["conscientiousness_score"]  = constants.kUnknownNumber,
	-- 0 = careless, disorganized, implusive
	-- 5 = will take calculated risks, doesn't reply on heavy processes, communicates appropriately
	-- 10 = organized, careful, disciplined
	
	["extraversion_score"] = constants.kUnknownNumber,
	-- 0 = retiring, somber, reserved
	-- 5 = will work seriously but able to integreate well with team, not disruptive
	-- 10 = sociable, fun-loving, affectionate
	
	["agreeableness_score"] = constants.kUnknownNumber,
	-- 0 = ruthless, suspicious, uncoorerative
	-- 5 = gets own projects down but helpful to others, no hidden agendas
	-- 10 = softheated, trusting, helpful
	
	["neuroticism_score"] = constants.kUnknownNumber
	-- 0 = calm, secure, self-satisfied
	-- 5 = steady, dependible, not over confident, and only complains about real problems
	-- 10 = anxious, insecure, self-pitying

    }

	-- public getters
	self.get_unique_id = function() return properties.unique_id end
	self.get_openess_score = function() return properties.openess_score end
	self.get_conscientiousness_score = function() return properties.conscientiousness_score end
	self.get_extraversion_score = function() return properties.extraversion_score end
	self.get_agreeableness_score = function() return properties.agreeableness_score end
	self.get_neuroticism_score = function() return properties.neuroticism_score end

	
	-- public setters
	self.set_unique_id = function(num) properties.unique_id = num end
	self.set_openess_score = function(num) properties.openess_score = num end
	self.set_conscientiousness_score = function(num) properties.conscientiousness_score = num end
	self.set_extraversion_score = function(num) properties.extraversion_score = num end
	self.set_agreeableness_score = function(num) properties.agreeableness_score = num end
	self.set_neuroticism_score = function(num) properties.neuroticism_score = num end

	-- public methods
	
	self.show = function()
		print("**Personality**")
        local json = Json.Encode(properties)
        print(json)
	end
		
	return self -- return the object!
end
	
