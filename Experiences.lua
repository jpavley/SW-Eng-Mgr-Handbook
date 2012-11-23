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
-- Experiences Class
-- ----------------------------------------------------------------------------
-- Represents Work/Project History
-- From the Wikipedia:
-- Experience as a general concept comprises knowledge of or skill of some 
-- thing or some event gained through involvement in or exposure to that thing
-- or event. The history of the word experience aligns it closely with the 
-- concept of experiment. For example, the word experience could be used in a 
-- statement like: "I have experience in fishing".
-- The concept of experience generally refers to know-how or procedural 
-- knowledge, rather than propositional knowledge: on-the-job training rather 
-- than book-learning. Philosophers dub knowledge based on experience 
-- "empirical knowledge" or "a posteriori knowledge".
-- ----------------------------------------------------------------------------

Class = {} -- the table to hold the class

Class.new = function(unique_id)
	local self = {} -- object of class
	
	-- private properties
	
	local properties  = { 
		
		
		["unique_id"] = unique_id or constants.kUnknownString,
		
		-- experience is measured in years
		
		["startup_business"] = constants.kUnknownNumber,
		["small_business"] = constants.kUnknownNumber,
		["corporate_buiness"] = constants.kUnknownNumber,
		-- types of businesses
		
		["technology_company"] = constants.kUnknownNumber,
		["media_company"] = constants.kUnknownNumber,
		["consulting_company"] = constants.kUnknownNumber,
		["nonprofit_company"] = constants.kUnknownNumber,
		-- focus on business
		
		["founder_role"] = constants.kUnknownNumber,
		["executive_role"] = constants.kUnknownNumber,
		["management_role"] = constants.kUnknownNumber,
		["employee_role"] = constants.kUnknownNumber,
		-- types of roles
				
	}
	
	-- create public accessors for properties
	
	for k,v in pairs(properties) do
		-- for each property in properties table
		-- create a getter for that property in the self table
		self["get_" .. k] = function() return properties[k] end
		-- create a setter for that property in the self table
		self["set_" .. k] = function(name) properties[k] = num end
	end
	
	-- public methods
	
	self.show = function()
        print("**Experiences**")
        local json = Json.Encode(properties)
        print(json)

	end
		
	return self -- return the object!
end


	
	
	
	
	
