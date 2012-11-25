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
-- SW Engineering Skills Class
-- ----------------------------------------------------------------------------
-- Represents Skills
-- From the Wikipedia:
-- A skill is the learned capacity to carry out pre-determined results often 
-- with the minimum outlay of time, energy, or both. In other words the 
-- abilities that one possesses. Skills can often be divided into 
-- domain-general and domain-specific skills. 
-- ----------------------------------------------------------------------------

Class = {} -- the table to hold the class

Class.new = function(tag)
	local self = {} -- object of class
	
	-- private properties
	
	local properties  = { 
		
		["tag"] = tag or constants.kUnknownString,

		-- List of top 10 domain-specific skills for software developers
		-- (This list should be different for different types of technical
		-- roles: QA, Scrum Master, Tech Manager, UX Designer, etc ...)
	    -- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding
		-- TODO: Add weights to each skill
		
		["unix_admin_score"] = constants.kUnknownNumber, 
		["software_patterns_score"] = constants.kUnknownNumber, 
		["oop_concepts_score"] = constants.kUnknownNumber, 
		["functional_concepts_score"] = constants.kUnknownNumber, 
		["system_desgin_score"] = constants.kUnknownNumber, 
		["security_design_score"] = constants.kUnknownNumber, 
		["agile_concepts_score"] = constants.kUnknownNumber, 
		["debugging_concepts_score"] = constants.kUnknownNumber, 
		["backend_architecture_score"] = constants.kUnknownNumber,
		["client_architecture_score"] = constants.kUnknownNumber,

	}
   
	-- create public accessors for properties

	SWEMHB_Utilities.create_accessors_for_properites(self, properties)

	-- public methods

	self.show = function()
		print("**SW Engineering Skills**")
		SWEMHB_Utilities.print_properties_values(properties)
	end
		
	return self -- return the object!
end
	
