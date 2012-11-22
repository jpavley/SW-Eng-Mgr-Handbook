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
-- or event.[1] The history of the word experience aligns it closely with the 
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
		
	    -- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding
		-- TODO: Add weights to each skill
		
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


	
	
	
	
	
