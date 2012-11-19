module(..., package.seeall)
require "constants"

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

Skills = {} -- the table to hold the class

Skills.new = function(unique_id)
	local self = {} -- object of class
	
	-- private properties
	unique_id = unique_id or constants.kUnknownString
	
	-- List of list of top 10 domain-general skills for technical people
	-- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding
	-- Inspired by DISCO: http://disco-tools.eu/disco2_portal/index.php
	
	verbal_expression_score = constants.kUnknownNumber
	written_expression_score = constants.kUnknownNumber
	time_management_score = constants.kUnknownNumber
	cooperation_ability_score = constants.kUnknownNumber
	coping_ability_score = constants.kUnknownNumber
	learning_ability_score = constants.kUnknownNumber
	listening_ability_score = constants.kUnknownNumber
	problem_solving_score = constants.kUnknownNumber
	enthusiasm_score = constants.kUnknownNumber
	flexibility_score = constants.kUnknownNumber
	
	-- List of top 10 domain-specific skills for software developers
	-- (This section should be different for different types of technical
	-- roles: QA, Scrum Master, Tech Manager, UX Designer, etc ...)
    -- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding

	
	unix_admin_score = constants.kUnknownNumber
    software_patterns_score = constants.kUnknownNumber
    oop_concepts_score = constants.kUnknownNumber
    functional_concepts_score = constants.kUnknownNumber
    system_desgin_score = constants.kUnknownNumber
    security_design_score = constants.kUnknownNumber
    agile_concepts_score = constants.kUnknownNumber
    debugging_concepts_score = constants.kUnknownNumber
    backend_architecture_score = constants.kUnknownNumber
    client_architecture_score = constants.kUnknownNumber
    
    -- List of top 10 language and tool skills for sofware developers
    -- (This section should be different for different types of technical
    -- roles: QA, Scrum Master, Tech Manager, UX Designer, etc ...)
       -- Scale: 0 = poor, 3 = below average 5 = average, 7 = above average, 10 = outstanding
    
    c_language_score = constants.kUnknownNumber
    python_language_score = constants.kUnknownNumber
    php_language_score = constants.kUnknownNumber
    cpp_langague_score = constants.kUnknownNumber
    java_language_acore = constants.kUnknownNumber
    perl_langague_score = constants.kUnknownNumber
    ruby_language_score = constants.kUnknownNumber
    javascript_language_score = constants.kUnknownNumber
    html_lanaguage_score = constants.kUnknownNumber
    css_language_score = constants.kUnknownNumber
    
   
	-- public getters
	self.get_unique_id = function() return unique_id end
    self.get_verbal_expression_score = function() return verbal_expression_score end
    self.get_written_expression_score = function() return written_expression_scor end
    self.get_time_management_score = function() return time_management_score end
    self.get_cooperation_ability_score = function() return cooperation_ability_score end
    self.get_coping_ability_score = function() return coping_ability_score end
    self.get_learning_ability_score = function() return learning_ability_score end
    self.get_listening_ability_score = function() return listening_ability_scor end
    self.get_problem_solving_score = function() return problem_solving_score end
    self.get_enthusiasm_score = function() return enthusiasm_score end
    self.get_flexibility_score = function() return flexibility_score end
    
    self.get_unix_admin_score = function() return unix_admin_score end
    self.get_software_patterns_score = function() return software_patterns_score end
    self.get_oop_concepts_score = function() return oop_concepts_score end
    self.get_functional_concepts_score = function() return functional_concepts_score end
    self.get_system_desgin_score = function() return system_desgin_score end
    self.get_security_design_score = function() return security_design_score end
    self.get_agile_concepts_score = function() return agile_concepts_score end
    self.get_debugging_concepts_score = function() return debugging_concepts_score end
    self.get_backend_architecture_score = function() return backend_architecture_score end
    self.get_client_architecture_score = function() return client_architecture_score end
    
    self.get_c_language_score = function() return c_language_score end
    self.get_python_language_score = function() return python_language_score end
    self.get_php_language_score = function() return php_language_score end
    self.get_cpp_langague_score = function() return cpp_langague_score end
    self.get_java_language_acore = function() return java_language_acore end
    self.get_perl_langague_score = function() return perl_langague_score end
    self.get_ruby_language_score = function() return ruby_language_score end
    self.get_javascript_language_score = function() return javascript_language_score end
    self.get_html_lanaguage_score = function() return html_lanaguage_score end
    self.get_css_language_score = function() return css_language_score end
	
	-- public setters
	self.set_unique_id = function(num) unique_id = num end

	-- public methods
	
	self.show = function()
		print("Skills: " .. unique_id)
	end
		
	return self -- return the object!
end
	
