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
-- Skills Class
-- ----------------------------------------------------------------------------
-- Represents Skills
-- From the Wikipedia:
-- A skill is the learned capacity to carry out pre-determined results often 
-- with the minimum outlay of time, energy, or both. In other words the 
-- abilities that one possesses. Skills can often be divided into 
-- domain-general and domain-specific skills. 
-- ----------------------------------------------------------------------------

Class = {} -- the table to hold the class

Class.new = function(unique_id)
	local self = {} -- object of class
	
	-- private properties
	
	local properties  = { 
		
		["unique_id"] = unique_id or constants.kUnknownString 
	
	}

	-- List of list of top 10 domain-general skills for technical people
	-- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding
	-- Inspired by DISCO: http://disco-tools.eu/disco2_portal/index.php
	-- TODO: Add weights to each skill
	
	local domain_general_skills  = { 
		
		["verbal_expression_score"] = constants.kUnknownNumber, 
		["written_expression_score"] = constants.kUnknownNumber, 
		["time_management_score"] = constants.kUnknownNumber, 
		["cooperation_ability_score"] = constants.kUnknownNumber, 
		["coping_ability_score"] = constants.kUnknownNumber, 
		["learning_ability_score"] = constants.kUnknownNumber, 
		["listening_ability_score"] = constants.kUnknownNumber, 
		["problem_solving_score"] = constants.kUnknownNumber, 
		["enthusiasm_score"] = constants.kUnknownNumber, 
		["flexibility_score"] = constants.kUnknownNumber
	
	}

	-- List of top 10 domain-specific skills for software developers
	-- (This section should be different for different types of technical
	-- roles: QA, Scrum Master, Tech Manager, UX Designer, etc ...)
    -- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding
	-- TODO: Add weights to each skill

	local domain_specfic_skills  = { 
		
		["unix_admin_score"] = constants.kUnknownNumber, 
		["software_patterns_score"] = constants.kUnknownNumber, 
		["oop_concepts_score"] = constants.kUnknownNumber, 
		["functional_concepts_score"] = constants.kUnknownNumber, 
		["system_desgin_score"] = constants.kUnknownNumber, 
		["security_design_score"] = constants.kUnknownNumber, 
		["agile_concepts_score"] = constants.kUnknownNumber, 
		["debugging_concepts_score"] = constants.kUnknownNumber, 
		["backend_architecture_score"] = constants.kUnknownNumber,
		["client_architecture_score"] = constants.kUnknownNumber

	}
    
    -- List of top 10 language skills for sofware developers
    -- (This section should be different for different types of technical
    -- roles: QA, Scrum Master, Tech Manager, UX Designer, etc ...)
    -- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding
 	-- TODO: Add weights to each skill
   
	local language_skills  = { 
		
		["c_language_score"] = constants.kUnknownNumber, 
		["python_language_score"] = constants.kUnknownNumber, 
		["php_language_score"] = constants.kUnknownNumber, 
		["cpp_langague_score"] = constants.kUnknownNumber, 
		["java_language_acore"] = constants.kUnknownNumber, 
		["perl_langague_score"] = constants.kUnknownNumber, 
		["ruby_language_score"] = constants.kUnknownNumber, 
		["javascript_language_score"] = constants.kUnknownNumber, 
		["html_lanaguage_score"] = constants.kUnknownNumber,
		["css_language_score"] = constants.kUnknownNumber

	}
	
	-- public getters
	self.get_unique_id = function() return properties.unique_id end

    self.get_verbal_expression_score = function() return domain_general_skills.verbal_expression_score end
    self.get_written_expression_score = function() return domain_general_skills.written_expression_score end
    self.get_time_management_score = function() return domain_general_skills.time_management_score end
    self.get_cooperation_ability_score = function() return domain_general_skills.cooperation_ability_score end
    self.get_coping_ability_score = function() return domain_general_skills.coping_ability_score end
    self.get_learning_ability_score = function() return domain_general_skills.learning_ability_score end
    self.get_listening_ability_score = function() return domain_general_skills.listening_ability_score end
    self.get_problem_solving_score = function() return domain_general_skills.problem_solving_score end
    self.get_enthusiasm_score = function() return domain_general_skills.enthusiasm_score end
    self.get_flexibility_score = function() return domain_general_skills.flexibility_score end
    
    self.get_unix_admin_score = function() return domain_specfic_skills.unix_admin_score end
    self.get_software_patterns_score = function() return domain_specfic_skills.software_patterns_score end
    self.get_oop_concepts_score = function() return domain_specfic_skills.oop_concepts_score end
    self.get_functional_concepts_score = function() return domain_specfic_skills.functional_concepts_score end
    self.get_system_desgin_score = function() return domain_specfic_skills.system_desgin_score end
    self.get_security_design_score = function() return domain_specfic_skills.security_design_score end
    self.get_agile_concepts_score = function() return domain_specfic_skills.agile_concepts_score end
    self.get_debugging_concepts_score = function() return domain_specfic_skills.debugging_concepts_score end
    self.get_backend_architecture_score = function() return domain_specfic_skills.backend_architecture_score end
    self.get_client_architecture_score = function() return domain_specfic_skills.client_architecture_score end
    
    self.get_c_language_score = function() return domain_general_skills.language_skills.c_language_score end
    self.get_python_language_score = function() return domain_general_skills.language_skills.python_language_score end
    self.get_php_language_score = function() return domain_general_skills.language_skills.php_language_score end
    self.get_cpp_langague_score = function() return domain_general_skills.language_skills.cpp_langague_score end
    self.get_java_language_acore = function() return domain_general_skills.language_skills.java_language_acore end
    self.get_perl_langague_score = function() return domain_general_skills.language_skills.perl_langague_score end
    self.get_ruby_language_score = function() return domain_general_skills.language_skills.ruby_language_score end
    self.get_javascript_language_score = function() return domain_general_skills.language_skills.javascript_language_score end
    self.get_html_lanaguage_score = function() return domain_general_skills.language_skills.html_lanaguage_score end
    self.get_css_language_score = function() return domain_general_skills.language_skills.css_language_score end
	
	-- public setters
	self.set_unique_id = function(num) properties.unique_id = num end

    self.set_verbal_expression_score = function(num) domain_general_skills.verbal_expression_score = num end
    self.set_written_expression_score = function(num) domain_general_skills.written_expression_score = num end
    self.set_time_management_score = function(num) domain_general_skills.time_management_score = num end
    self.set_cooperation_ability_score = function(num) domain_general_skills.cooperation_ability_score = num end
    self.set_coping_ability_score = function(num) domain_general_skills.coping_ability_score = num end
    self.set_learning_ability_score = function(num) domain_general_skills.learning_ability_score = num end
    self.set_listening_ability_score = function(num) domain_general_skills.listening_ability_score = num end
    self.set_problem_solving_score = function(num) domain_general_skills.problem_solving_score = num end
    self.set_enthusiasm_score = function(num) domain_general_skills.enthusiasm_score = num end
    self.set_flexibility_score = function(num) domain_general_skills.flexibility_score = num end
    
    self.set_unix_admin_score = function(num) domain_specfic_skills.unix_admin_score = num end
    self.set_software_patterns_score = function(num) domain_specfic_skills.software_patterns_score = num end
    self.set_oop_concepts_score = function(num) domain_specfic_skills.oop_concepts_score = num end
    self.set_functional_concepts_score = function(num) domain_specfic_skills.functional_concepts_score = num end
    self.set_system_desgin_score = function(num) domain_specfic_skills.system_desgin_score = num end
    self.set_security_design_score = function(num) domain_specfic_skills.security_design_score = num end
    self.set_agile_concepts_score = function(num) domain_specfic_skills.agile_concepts_score = num end
    self.set_debugging_concepts_score = function(num) domain_specfic_skills.debugging_concepts_score = num end
    self.set_backend_architecture_score = function(num) domain_specfic_skills.backend_architecture_score = num end
    self.set_client_architecture_score = function(num) domain_specfic_skills.client_architecture_score = num end
    
    self.set_c_language_score = function(num) language_skills.c_language_score = num end
    self.set_python_language_score = function(num) language_skills.python_language_score = num end
    self.set_php_language_score = function(num) language_skills.php_language_score = num end
    self.set_cpp_langague_score = function(num) language_skills.cpp_langague_score = num end
    self.set_java_language_acore = function(num) language_skills.java_language_acore = num end
    self.set_perl_langague_score = function(num) language_skills.perl_langague_score = num end
    self.set_ruby_language_score = function(num) language_skills.ruby_language_score = num end
    self.set_javascript_language_score = function(num) language_skills.javascript_language_score = num end
    self.set_html_lanaguage_score = function(num) language_skills.html_lanaguage_score = num end
    self.set_css_language_score = function(num) language_skills.css_language_score = num end

	-- public methods
	
	self.show = function()
		-- TODO: Return 1 JSON object, not 4!
		print("** Skills**: ")
        local json = Json.Encode(properties)
        print(json)

        local json_gen_skills = Json.Encode(domain_general_skills)
        print(json_gen_skills)

        local json_spec_skills = Json.Encode(domain_specfic_skills)
        print(json_spec_skills)

        local json_lang_skills = Json.Encode(language_skills)
        print(json_lang_skills)

	end
		
	return self -- return the object!
end
	
