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

Class.new = function(tag)
	local self = {} -- object of class
	
	-- private properties
    
    local properties = {

		["tag"] = tag or constants.kUnknownString,
		
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

	-- create public accessors for properties
	
	SWEMHB_Utilities.create_accessors_for_properites(self, properties)
	
	-- public methods
	
	self.show = function()
		print("**Personality**")
		SWEMHB_Utilities.print_properties_values(properties)
	end
		
	return self -- return the object!
end
	
