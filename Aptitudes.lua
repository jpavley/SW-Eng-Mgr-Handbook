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
	-- Aptitudes Class
	-- ----------------------------------------------------------------------------
	-- Represents Talents
	-- From the Wikipedia:
	-- An aptitude is a component of a competency to do a certain kind of work at 
	-- a certain level, which can also be considered "talent". Aptitudes may be 
	-- physical or mental. Aptitude is not knowledge, understanding, learned or 
	-- acquired abilities (skills) or attitude. The innate nature of aptitude is 
	-- in contrast to achievement, which represents knowledge or ability that is 
	-- gained.
	-- ----------------------------------------------------------------------------

	Class = {} -- the table to hold the class

	Class.new = function(unique_id)
		local self = {} -- object of class
		
		-- private properties
		
		local properties  = { 
			
			-- The following 5 aptitiudes represent latent skills that can
			-- flower over time with experience and coaching. A person probably
			-- has all of these aptitudes but may not have the opportunity to
			-- express or develop the talents. Some aptitudes may be supressed
			-- by an individuals personality or work situation. It's up to us
			-- as managers and leaders to ensure the aptitudes of our team
			-- members are unblocked.
			
			["unique_id"] = unique_id or constants.kUnknownString,
			
		    -- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding
			-- TODO: Add weights to each skill
			
			["abstract_reasoning_potential"] = constants.kUnknownNumber,
			["strategic_reasoning_potential"] = constants.kUnknownNumber,
			["practical_reasoning_potential"] = constants.kUnknownNumber,
			["realtime_reasoning_potential"] = constants.kUnknownNumber,
			["visual_reasoning_potential"] = constants.kUnknownNumber,
		
		}
		
	 	-- public getters
		self.get_unique_id = function() return properties.unique_id end
		self.get_abstract_reasoning_potential = function() return properties.abstract_reasoning_potential end
		self.get_strategic_reasoning_potential = function() return properties.strategic_reasoning_potential end
		self.get_practical_reasoning_potential = function() return properties.practical_reasoning_potential end
		self.get_realtime_reasoning_potential = function() return properties.realtime_reasoning_potential end
		self.get_visual_reasoning_potential = function() return properties.visual_reasoning_potential end
		
		-- public setters
		self.set_unique_id = function(num) properties.unique_id = num end
		self.set_abstract_reasoning_potential = function(num) properties.abstract_reasoning_potential = num end
		self.set_strategic_reasoning_potential = function(num) properties.strategic_reasoning_potential = num end
		self.set_practical_reasoning_potential = function(num) properties.practical_reasoning_potential = num end
		self.set_realtime_reasoning_potential = function(num) properties.realtime_reasoning_potential = num end
		self.set_visual_reasoning_potential = function(num) properties.visual_reasoning_potential = num end
		-- public methods
		
		self.show = function()
	        print("**Aptitudes**")
	        local json = Json.Encode(properties)
	        print(json)
		end
			
		return self -- return the object!
	end


		
		
		
		
		
