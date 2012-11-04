require "constants"
require "Identity"
require "Personality"

-- Identity unit tests

test_identity = Identity.Identity.new("111-11-111", "Charles", "Darwin")
test_identity.set_gender(constants.kGenderMale)
test_identity.set_middle_name("Robert")
test_identity.set_date_of_birth(os.date("%d/%m/%y"))
test_identity.show()

test2_identity = Identity.Identity.new()
test2_identity.show()

-- Personality unit tests

test_personality = Personality.Personality.new()
test_personality.show()
