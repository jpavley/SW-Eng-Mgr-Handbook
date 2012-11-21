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

require "constants"
require "Identity"
require "Personality"
require "Skills"
-- Identity unit tests

print("--- Identity ---")

test1_identity = Identity.Class.new()
test1_identity.show()

test2_identity = Identity.Class.new("111-11-111", "Charles", "Darwin")
test2_identity.set_gender(constants.kGenderMale)
test2_identity.set_middle_name("Robert")
test2_identity.set_date_of_birth(os.date("%d/%m/%y"))
test2_identity.show()

-- Personality unit tests

print("--- Personality ---")

test1_personality = Personality.Class.new()
test1_personality.show()

test2_personality = Personality.Class.new("111-111-111")
test2_personality.set_openess_score(7)
test2_personality.set_conscientiousness_score(5)
test2_personality.set_extraversion_score(2)
test2_personality.set_agreeableness_score(3)
test2_personality.set_neuroticism_score(4)
test2_personality.show()

-- Skills unit tests
print("--- Skills ---")
test1_skills = Skills.Class.new()
test1_skills.show()

test2_skills = Skills.Class.new("111-111-111")
test2_skills.set_verbal_expression_score(10)
test2_skills.set_written_expression_score(9)
test2_skills.set_time_management_score(8)
test2_skills.set_cooperation_ability_score(7)
test2_skills.set_coping_ability_score(6)
test2_skills.show()

-- Composite person tests

print("--- Composite Person ---")

person = {}

person.identity = test2_identity
person.personality = test2_personality
person.skills = test2_skills

person.identity.show()
person.personality.show()
person.skills.show()
