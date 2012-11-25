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

Class.new = function(tag)
	local self = {} -- object of class
	
	-- private properties
	
	local properties  = { 
		
		["tag"] = tag or constants.kUnknownString,
		
		-- Academic degrees from instituations of higher learning
		-- While not a requirement some specialities in software
		-- development can benefit greatly from an academic background:
		-- language design, algorithm optimization, data structure design,
		-- highly scalable systems, etc... But even in these areas there
		-- are famous exceptions that make it difficult to infer a general
		-- rule.
		["associates_degree"] = false,
		["bachelors_degree"] = false,
		["masters_degree"] = false,
		["doctors_degree"] = false,
		
		-- Areas of focus
		-- A software engineer might have several majors or areas of focus
		-- while pursing an education, especially if he or she is an 
		-- autodidact. Great application developers working on consumer
		-- products gain an advangate from mastering a "liberal art" to
		-- learn the value of aesthetics and the creative process.
		["computer_science_focus"] = constants.kUnknownNumber,
		["mathematics_focus"] = constants.kUnknownNumber,
		["visual_art_focus"] = constants.kUnknownNumber,
		["music_focus"] = constants.kUnknownNumber,
		["literature_focus"] = constants.kUnknownNumber,
		["philosophy_focus"] = constants.kUnknownNumber,
		["journalism_focus"] = constants.kUnknownNumber,
	}
	
	-- create public accessors for properties
	
	SWEMHB_Utilities.create_accessors_for_properites(self, properties)
	
	-- public methods
	
	self.show = function()
		print("**Education**")
		SWEMHB_Utilities.print_properties_values(properties)
	end
		
	return self -- return the object!
end


	
	
	
	
	
