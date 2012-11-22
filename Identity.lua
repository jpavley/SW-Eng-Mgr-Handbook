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
-- Identity Class
-- ----------------------------------------------------------------------------
-- Represents PII (Personally identifiable information)
-- From the Wikipedia: nformation that can be used to uniquely identify, 
-- contact, or locate a single person or can be used with other sources 
-- to uniquely identify a single individual.
-- ----------------------------------------------------------------------------

Class = {} -- the table to hold the class

Class.new = function(unique_id, first_name, last_name)
	local self = {} -- object of class
	
	-- private properties
	local properties  = { 
		
		["unique_id"] = unique_id or constants.kUnknownString, 
	    ["first_name"] = first_name or constants.kUnknownString,
	    ["middle_name"] = constants.kUnknownString,
	    ["last_name"] = last_name or constants.kUnknownString,
	    ["gender"] = constants.kGenderUnknown,
	    ["date_of_birth"] = constants.kUnknownDate 
	
	}
                
 	-- public getters
	self.get_unique_id = function() return properties.unique_id end
	self.get_gender = function() return properties.gender end
	self.get_first_name = function() return properties.first_name end
	self.get_last_name = function() return properties.last_name end
	self.get_middle_name = function() return properties.middle_name end
	self.get_date_of_birth = function() return properties.date_of_birth end
	
	-- public setters
	self.set_unique_id = function(num) properties.unique_id = num end
	self.set_gender = function(str) properties.gender = str end
	self.set_first_name = function(str) properties.first_name = str end
	self.set_last_name = function(str) properties.last_name = str end
	self.set_middle_name = function(str) properties.middle_name = str end
	self.set_date_of_birth = function(str) properties.date_of_birth = str end

	-- public methods
	
	self.show = function()
        print("**Identity**")
        local json = Json.Encode(properties)
        print(json)
	end
		
	return self -- return the object!
end
