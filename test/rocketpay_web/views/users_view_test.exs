defmodule RocketpayWeb.UsersViewTest do
  use RocketpayWeb.ConnCase

  import Phoenix.View

  alias Rocketpay.{User, Account}
  alias RocketpayWeb.UsersView

  test "renders create.json" do
    params = %{
      name: "teste",
      email: "teste@email.com",
      nickname: "testinho",
      password: "123456",
      age: 27
    }

    {:ok, %User{account: %Account{id: account_id}} = user} = Rocketpay.create_user(params)

    response = render(UsersView, "create.json", user: user)

    expected_response = %{
      message: "User created",
      user: %{
        id: user.id,
        name: "teste",
        nickname: "testinho",
        account: %{
          balance: Decimal.new("0.00"),
          id: account_id,
        },
      }
    }

    assert response == expected_response
  end
end
