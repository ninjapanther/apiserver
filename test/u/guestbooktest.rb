require 'test_helper'
class GuestBookTesta < ActiveSupport::TestCase
test "should not save guest_book with invalid user" do
	@guest_book = GuestBook.new
		@guest_book.user="Steven"
		assert_match(/[a-zA-Z]{6,20}/, @guest_book.user,"is not 6 to 20 characters")
		end
		end