require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "y el nombre y email?" do
     user = User.new
     assert_not user.save, "no creado"
  end
end
