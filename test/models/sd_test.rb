require 'test_helper'

class SdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  

 def setup
@post1 = posts(:post1)
@post2 = posts(:post2)
end
 test "validates user_id presence" do
@post1.user_id = nil
assert_not @post1.valid?

end
  
  
end
