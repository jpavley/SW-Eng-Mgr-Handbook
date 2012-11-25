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

Class.new = function(tag, first_name, last_name)
	local self = {} -- object of class
	
	-- private properties
	local properties  = { 
		
		["tag"] = tag or constants.kUnknownString, 
	    ["first_name"] = first_name or constants.kUnknownString,
	    ["middle_name"] = constants.kUnknownString,
	    ["last_name"] = last_name or constants.kUnknownString,
	    ["gender"] = constants.kGenderUnknown,
	    ["date_of_birth"] = constants.kUnknownDate 
	
	}
                
	-- create public accessors for properties
	
	SWEMHB_Utilities.create_accessors_for_properites(self, properties)
	
	-- public methods
	
	self.show = function()
		print("**Identity**")
		SWEMHB_Utilities.print_properties_values(properties)
	end
		
	return self -- return the object!
end
