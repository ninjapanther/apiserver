require "test/unit"
class SdTest < Test::Unit::TestCase

def test_cpustatus_greater_than_20
  # Add code here to create an Sd and verify the output
  # Something like:
  sd=Sd.new
  sd.cpu > 20
  assert sd.cpustatus ==  "high email server root"
end

	
end

