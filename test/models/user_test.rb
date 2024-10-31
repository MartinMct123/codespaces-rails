require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "y el nombre y email?" do
     user = User.new
     assert_not user.save, "no creado"
  end

  test "y el @gmail.com ?" do
    user = User.new(name: "Usuario", email: "usuario@gmail.com")
    assert user.save, "El usuario no se pudo guardar con un email válido"

    user.email = "usuario@yahoo.com"
    assert_not user.save, "El usuario se guardó con un email no válido"
  end
end
