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
-- Education Class
-- ----------------------------------------------------------------------------
-- Represents Educational Background with a focus on "Higher Education"
-- From the Wikipedia:
-- Education in its general sense is a form of learning in which knowledge, 
-- skills, and habits of a group of people are transferred from one generation 
-- to the next through teaching, training, research, or simply through 
-- autodidacticism. Generally, it occurs through any experience that has a 
-- formative effect on the way one thinks, feels, or acts.
-- Higher education, also called tertiary, third stage, or post secondary 
-- education, is the non-compulsory educational level that follows the 
-- completion of a school providing a secondary education, such as a high 
-- school or secondary school. Tertiary education is normally taken to 
-- include undergraduate and postgraduate education, as well as vocational 
-- education and training. Colleges and universities are the main institutions 
-- that provide tertiary education. Collectively, these are sometimes known as 
-- tertiary institutions. Tertiary education generally results in the receipt 
-- of certificates, diplomas, or academic degrees.

-- ----------------------------------------------------------------------------

Class = {} -- the table to hold the class

Class.new = function(unique_id)
	local self = {} -- object of class
	
	-- private properties
	
	local properties  = { 
		
		
		["unique_id"] = unique_id or constants.kUnknownString,
						
	}
	
 	-- public getters
	self.get_unique_id = function() return properties.unique_id end
	
	-- public setters
	self.set_unique_id = function(num) properties.unique_id = num end
	-- public methods
	
	self.show = function()
        print("**Experiences**")
        local json = Json.Encode(properties)
        print(json)
	end
		
	return self -- return the object!
end


	
	
	
	
	
