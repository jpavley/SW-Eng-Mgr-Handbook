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
require "SWEMHB_Utilities"

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

Class.new = function(tag)
	local self = {} -- object of class
	
	-- private properties
	
	local properties  = { 
		
		["tag"] = tag or constants.kUnknownString,
		
		-- Note: experience is measured in years, rounded down.
		
		-- types of businesses
		
		["startup_business"] = constants.kUnknownNumber,
		-- A true startup is a group of 2-5 founders and employees bootstrapping a business.
		
		["small_business"] = constants.kUnknownNumber,
		-- A small business has less than 100 people and can be public or private.
		
		["corporate_business"] = constants.kUnknownNumber,
		-- A corporate business has more tha 100 people and can be pulbic or private.
		
		-- focus of company

		["technology_company"] = constants.kUnknownNumber,
		--  A company that provides goods or services based on a technology platform to consumers or businesses.
		
		["media_company"] = constants.kUnknownNumber,
		-- A company that provides goods or services based on content to consumers.
		
		["consulting_company"] = constants.kUnknownNumber,
		-- A company that provides a service to other companies.
		
		["nonprofit_company"] = constants.kUnknownNumber,
		-- A company that is not organized around making a profit through their goods or services.
		
		-- types of roles

		["founder_role"] = constants.kUnknownNumber,
		-- A founder of a company, usually a startup. 
		
		["executive_role"] = constants.kUnknownNumber,
		-- A senior leaders of a company.
		
		["management_role"] = constants.kUnknownNumber,
		-- A middle manager of a company.
		
		["employee_role"] = constants.kUnknownNumber,
		-- A paid worker or hired hand.
		
		["investor_role"] = constants.kUnknownNumber,
		-- An investor who provides capital to a company
		
		["intern_role"] = constants.kUnknownNumber,
		-- An unpaid worker or volunteer
				
	}
	
	-- create public accessors for properties
	
	SWEMHB_Utilities.create_accessors_for_properites(self, properties)
	
	-- public methods
	
	self.show = function()
		print("**Experiences**")
		SWEMHB_Utilities.print_properties_values(properties)
	end
		
	return self -- return the object!
end


	
	
	
	
	
