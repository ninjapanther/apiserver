require "test/unit"
class StringExtension < Test::Unit::TestCase
	def test_is_numer
		assert "3".is_number?
	end
	def test_is_not_number
		assert !"dsfsdfs".is_number?
	end
end