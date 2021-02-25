defmodule RocketpayWeb.AccountsView do
  alias Rocketpay.Account

  def render("update.json", %{
          account: %Account{
            id: account_id,
            balance: balance
          }
        }
      ) do
    %{
      message: "Balance changed sucessfuly",
        account:  %{
          id: account_id,
          balance: balance
        }
      }
  end
end
