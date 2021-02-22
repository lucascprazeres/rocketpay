defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.CSV"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, file}), do: file
  defp handle_file({:error, _reason}), do: {:error, "Invalid file."}
end
