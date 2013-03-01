require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
	should belong_to(:user)
	should belong_to(:friend)

	test "that creating a friedship works without raising an exception" do
		assert_nothing_raised do 
		UserFriendship.create user: users(:xuzonne), friend: users(:park)
	end
  end	

test "that creating a friendship based on user id and friend id works" do
  UserFriendship.create user_id: users(:xuzonne).id, friend_id: users(:park).id
  assert users(:xuzonne).friends.include?(users(:park))
 end   
end
