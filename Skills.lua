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

Class = {} -- the table to hold the class

Class.new = function(unique_id)
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
    
    -- List of top 10 language skills for sofware developers
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
    self.get_written_expression_score = function() return written_expression_score end
    self.get_time_management_score = function() return time_management_score end
    self.get_cooperation_ability_score = function() return cooperation_ability_score end
    self.get_coping_ability_score = function() return coping_ability_score end
    self.get_learning_ability_score = function() return learning_ability_score end
    self.get_listening_ability_score = function() return listening_ability_score end
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

    self.set_verbal_expression_score = function(num) verbal_expression_score = num end
    self.set_written_expression_score = function(num) written_expression_score = num end
    self.set_time_management_score = function(num) time_management_score = num end
    self.set_cooperation_ability_score = function(num) cooperation_ability_score = num end
    self.set_coping_ability_score = function(num) coping_ability_score = num end
    self.set_learning_ability_score = function(num) learning_ability_score = num end
    self.set_listening_ability_score = function(num) listening_ability_score = num end
    self.set_problem_solving_score = function(num) problem_solving_score = num end
    self.set_enthusiasm_score = function(num) enthusiasm_score = num end
    self.set_flexibility_score = function(num) flexibility_score = num end
    
    self.set_unix_admin_score = function(num) unix_admin_score = num end
    self.set_software_patterns_score = function(num) software_patterns_score = num end
    self.set_oop_concepts_score = function(num) oop_concepts_score = num end
    self.set_functional_concepts_score = function(num) functional_concepts_score = num end
    self.set_system_desgin_score = function(num) system_desgin_score = num end
    self.set_security_design_score = function(num) security_design_score = num end
    self.set_agile_concepts_score = function(num) agile_concepts_score = num end
    self.set_debugging_concepts_score = function(num) debugging_concepts_score = num end
    self.set_backend_architecture_score = function(num) backend_architecture_score = num end
    self.set_client_architecture_score = function(num) client_architecture_score = num end
    
    self.set_c_language_score = function(num) c_language_score = num end
    self.set_python_language_score = function(num) python_language_score = num end
    self.set_php_language_score = function(num) php_language_score = num end
    self.set_cpp_langague_score = function(num) cpp_langague_score = num end
    self.set_java_language_acore = function(num) java_language_acore = num end
    self.set_perl_langague_score = function(num) perl_langague_score = num end
    self.set_ruby_language_score = function(num) ruby_language_score = num end
    self.set_javascript_language_score = function(num) javascript_language_score = num end
    self.set_html_lanaguage_score = function(num) html_lanaguage_score = num end
    self.set_css_language_score = function(num) css_language_score = num end

	-- public methods
	
	self.show = function()
		print("** Skills**: "
        .. "ID: " .. unique_id
        .. ", *Domain General Skills*: "
        .. " Verbal Expression: " .. verbal_expression_score
        .. ", Written Expression: " .. written_expression_score
        .. ", Time Management: " .. time_management_score
        .. ", Cooperation Ability: " .. cooperation_ability_score
        .. ", Coping Ability: " .. coping_ability_score
        .. ", Learning Ability: " .. learning_ability_score
        .. ", Listening Ability: " .. listening_ability_score
        .. ", Problem Solving: " .. problem_solving_score
        .. ", Enthusiam: " .. enthusiasm_score
        .. ", Flexibility: " .. flexibility_score
        .. ", *Domain Specific Skills*: "
        .. " Unix Admin: " ..     unix_admin_score
        .. ", Software Patterns: " ..     software_patterns_score
        .. ", OOP Concepts: " ..     oop_concepts_score
        .. ", Functional Concepts: " ..     functional_concepts_score
        .. ", System Design: " ..     system_desgin_score
        .. ", Security Design: " ..     security_design_score
        .. ", Agile Concepts: " ..     agile_concepts_score
        .. ", Debugging Concepts: " ..     debugging_concepts_score
        .. ", Backend Architecture: " ..     backend_architecture_score
        .. ", Client Architecture: " ..    client_architecture_score
        .. ", *Language Skills*: "
        .. " C: " ..     c_language_score
        .. ", Python: " ..     python_language_score
        .. ", PHP: " ..     php_language_score
        .. ", C++: " ..     cpp_langague_score
        .. ", Java: " ..     java_language_acore
        .. ", Perl: " ..     perl_langague_score
        .. ", Ruby: " ..     ruby_language_score
        .. ", JavaScript: " ..     javascript_language_score
        .. ", HTML: " ..     html_lanaguage_score
        .. ", CSS: " ..    css_language_score)

	end
		
	return self -- return the object!
end
	
